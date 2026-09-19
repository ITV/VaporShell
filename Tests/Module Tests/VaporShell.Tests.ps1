#Requires -Modules @{ ModuleName = 'Pester'; ModuleVersion = '5.0.0' }

BeforeDiscovery {
    # Resolve the module name and paths in a cross-platform way. This repo IS the
    # VaporShell module; honour $env:BHProjectName when the CI sets it, otherwise
    # default to the module folder name (matching invoke.build.ps1's -ModuleName default).
    $projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..' '..')).Path
    $moduleName = if ($env:BHProjectName) { $env:BHProjectName } else { 'VaporShell' }

    $decompiledModulePath = Join-Path $projectRoot $moduleName

    # Discovery-time data for the data-driven test cases below.
    $sourceScripts = Get-ChildItem -Path $decompiledModulePath -Include '*.ps1', '*.psm1', '*.psd1' -Recurse -File |
        ForEach-Object { @{ File = $_.FullName } }

    $privateFunctionNames = Get-ChildItem -Path (Join-Path $decompiledModulePath 'Private') -Filter '*.ps1' -Recurse -File |
        ForEach-Object { @{ Item = $_.BaseName } }
}

BeforeAll {
    $projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..' '..')).Path
    $moduleName = if ($env:BHProjectName) { $env:BHProjectName } else { 'VaporShell' }

    $decompiledModulePath = Join-Path $projectRoot $moduleName
    # The compiled/built module lives under BuildOutput/<ModuleName>/<version>.
    $builtModuleRoot = Join-Path $projectRoot 'BuildOutput' $moduleName
    $udFile = (Resolve-Path (Join-Path $PSScriptRoot '..' 'Assets' 'UserData.sh')).Path

    # Each test writes/reads its template in a temp location (cross-platform, writable).
    $testPath = Join-Path ([System.IO.Path]::GetTempPath()) 'VaporShell.Tests.Template.json'

    Write-Verbose "Importing $moduleName module from [$builtModuleRoot]"
    Import-Module $builtModuleRoot -Force -ArgumentList $true -Verbose:$false
}

AfterAll {
    Remove-Item -Path $testPath -Force -ErrorAction SilentlyContinue
}

Describe 'Module tests' {
    Context 'Confirm files are valid Powershell syntax' {
        It 'Script <File> should be valid Powershell' -TestCases $sourceScripts {
            param($File)

            $File | Should -Exist

            $contents = Get-Content -Path $File -ErrorAction Stop
            $errors = $null
            $null = [System.Management.Automation.PSParser]::Tokenize($contents, [ref]$errors)
            $errors.Count | Should -Be 0
        }
    }

    Context 'Confirm private functions are not exported on module import' {
        It 'Should not export private function <Item>' -TestCases $privateFunctionNames {
            param($Item)
            Get-Command -Name $Item -Module $moduleName -ErrorAction SilentlyContinue | Should -BeNullOrEmpty
        }
    }

    Context 'Confirm there are no duplicate function names in private and public folders' {
        It 'Should have no duplicate functions' {
            $functions = @(
                Get-ChildItem (Join-Path $decompiledModulePath 'Public') -Recurse -Include '*.ps1' | Select-Object -ExpandProperty BaseName
                Get-ChildItem (Join-Path $decompiledModulePath 'Private') -Recurse -Include '*.ps1' | Select-Object -ExpandProperty BaseName
            )
            ($functions | Group-Object | Where-Object { $_.Count -gt 1 }).Count | Should -BeLessThan 1
        }
    }
}

Describe 'Unit tests' {
    Context 'Strict mode' {
        It 'Should build template as an object then export to JSON' {
            Set-StrictMode -Version latest
            $templateInit = Initialize-Vaporshell -Description 'Testing template build'
            $templateInit.AddParameter((New-VaporParameter -LogicalId 'EnvTypeString' -Type String -Default 'test' -AllowedValues 'test', 'prod' -Description 'Environment type'))
            $templateInit.AddMetadata((New-VaporMetadata -LogicalId 'Instances' -Metadata @{ 'Description' = 'Information about the instances' }))
            $templateInit.AddCondition(
                (New-VaporCondition -LogicalId 'CreateProdResources' -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref 'EnvTypeString') -SecondValue 'prod')),
                (Add-Include -Location 's3://MyAmazonS3BucketName/single_wait_condition.yaml')
            )
            $templateInit.AddMapping(
                (New-VaporMapping -LogicalId 'RegionMap' -Map ([PSCustomObject][Ordered]@{
                            'us-east-1' = [PSCustomObject][Ordered]@{
                                '32' = 'ami-6411e20d'
                                '64' = 'ami-7a11e213'
                            }
                            'us-west-1' = [PSCustomObject][Ordered]@{
                                '32' = 'ami-c9c7978c'
                                '64' = 'ami-cfc7978a'
                            }
                        })
                )
            )
            $templateInit.AddResource(
                (New-VSApiGatewayDeployment -LogicalId 'GatewayDeployment' -Description 'My deployment' -RestApiId (Add-FnRef -Ref 'MyApi') -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) -CacheClusterEnabled $true -CacheDataEncrypted $false)),
                (New-VSApiGatewayRestApi -LogicalId 'MyApi' -Description 'My REST API'),
                (New-VSEC2Instance -LogicalId 'MyInstance' -AvailabilityZone 'us-east-1a' -ImageId (Add-FnFindInMap -MapName 'RegionMap' -TopLevelKey 'us-west-1' -SecondLevelKey '32') -Condition 'CreateProdResources' -Tags (Add-VSTag -Key 'Name' -Value 'MyInstance'), (Add-VSTag -Key 'Environment' -Value 'Production') -CreationPolicy (Add-CreationPolicy -MinSuccessfulInstancesPercent 100 -Count 1 -Timeout 'PT5M') -UpdatePolicy (Add-UpdatePolicy -WillReplace $true -MaxBatchSize 2 -MinInstancesInService 2 -MinSuccessfulInstancesPercent 100 -PauseTime 'PT30S' -WaitOnResourceSignals $true -IgnoreUnmodifiedGroupSizeProperties $true) -DeletionPolicy Delete -DependsOn 'GatewayDeployment' -Metadata ([PSCustomObject]@{ CommonName = 'WebServer1' }))
            )
            $templateInit.AddOutput((New-VaporOutput -LogicalId 'BackupLoadBalancerDNSName' -Description 'The DNSName of the backup load balancer' -Value (Add-FnGetAtt -LogicalNameOfResource 'BackupLoadBalancer' -AttributeName 'DNSName') -Condition 'CreateProdResources'))

            Export-Vaporshell -VaporshellTemplate $templateInit -Path $testPath -Force

            { $templateInit.RemoveCondition('CreateProdResources') } | Should -Not -Throw
            { $templateInit.RemoveMapping('RegionMap') } | Should -Not -Throw
            { $templateInit.RemoveParameter('EnvTypeString') } | Should -Not -Throw
            { $templateInit.RemoveMetadata('Instances') } | Should -Not -Throw
            { $templateInit.RemoveResource('GatewayDeployment') } | Should -Not -Throw
            { $templateInit.RemoveOutput('BackupLoadBalancerDNSName') } | Should -Not -Throw
        }

        It 'Should import an existing CloudFormation template as Vaporshell.Template' {
            $template = Import-Vaporshell -Path $testPath
            $template | Should -Not -BeNullOrEmpty
        }

        It 'Should add new properties to the imported JSON object' {
            $template = Import-Vaporshell -Path $testPath
            $template.AddMetadata(
                (New-VaporMetadata -LogicalId 'Databases' -Metadata @{ 'Description' = 'Information about the Databases' })
            )
            $template.AddCondition(
                (New-VaporCondition -LogicalId 'CreateTestResources' -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref 'EnvTypeString') -SecondValue 'test'))
            )
            $template.AddMapping(
                (New-VaporMapping -LogicalId 'RegionMap2' -Map ([PSCustomObject][Ordered]@{
                            'us-east-2' = [PSCustomObject][Ordered]@{
                                '32' = 'ami-6411e20d'
                                '64' = 'ami-7a11e213'
                            }
                            'us-west-2' = [PSCustomObject][Ordered]@{
                                '32' = 'ami-c9c7978c'
                                '64' = 'ami-cfc7978a'
                            }
                        })
                )
            )
            $template.AddResource(
                (New-VaporResource -LogicalId 'MyInstance2' -Type 'AWS::EC2::Instance' -Properties ([PSCustomObject][Ordered]@{
                            'AvailabilityZone' = 'us-east-1b'
                            'ImageId'          = (Add-FnFindInMap -MapName 'RegionMap' -TopLevelKey 'us-west-2' -SecondLevelKey '32')
                        })
                )
            )
            $template.AddOutput(
                (New-VaporOutput -LogicalId 'PrimaryLoadBalancerDNSName' -Description 'The DNSName of the primary load balancer' -Value (Add-FnGetAtt -LogicalNameOfResource 'PrimaryLoadBalancer' -AttributeName 'DNSName') -Condition 'CreateTestResources')
            )
            $vp1Params = @{
                'LogicalID'             = 'EnvType'
                'Type'                  = 'AWS::EC2::VPC::Id'
                'Description'           = 'VpcId of your existing Virtual Private Cloud (VPC)'
                'ConstraintDescription' = 'must be the VPC Id of an existing Virtual Private Cloud.'
            }
            $vp2Params = @{
                'LogicalID'             = 'EnvType2'
                'Type'                  = 'AWS::EC2::VPC::Id'
                'Description'           = 'VpcId of your existing Virtual Private Cloud (VPC)2'
                'ConstraintDescription' = 'must be the VPC Id of an existing Virtual Private Cloud.2'
            }
            $template.AddParameter((New-VaporParameter @vp1Params))
            $template.AddParameter((New-VaporParameter @vp2Params))
            $template.AddResource(
                (New-VSApiGatewayDeployment -LogicalId 'GatewayDeployment3' -Description 'My deployment' -RestApiId (Add-FnRef -Ref 'MyApi') -StageDescription (Add-VSApiGatewayDeploymentStageDescription -MethodSettings (Add-VSApiGatewayDeploymentMethodSetting -LoggingLevel ERROR) -CacheClusterEnabled $true -CacheDataEncrypted $false)),
                (New-VSApiGatewayRestApi -LogicalId 'MyApi3' -Description 'My REST API'),
                (New-VSEC2Instance -LogicalId 'MyInstance3' -AvailabilityZone 'us-east-1a' -ImageId (Add-FnFindInMap -MapName 'RegionMap' -TopLevelKey 'us-west-1' -SecondLevelKey '32') -Condition 'CreateProdResources' -Tags (Add-VSTag -Key 'Name' -Value 'MyInstance'), (Add-VSTag -Key 'Environment' -Value 'Production') -CreationPolicy (Add-CreationPolicy -MinSuccessfulInstancesPercent 100 -Count 1 -Timeout 'PT5M') -UpdatePolicy (Add-UpdatePolicy -WillReplace $true -MaxBatchSize 2 -MinInstancesInService 2 -MinSuccessfulInstancesPercent 100 -PauseTime 'PT30S' -WaitOnResourceSignals $true -IgnoreUnmodifiedGroupSizeProperties $true) -DeletionPolicy Delete -DependsOn 'GatewayDeployment3' -Metadata ([PSCustomObject]@{ CommonName = 'WebServer1' }) -UserData (Add-UserData -File $udFile))
            )
            $template.AddOutput((New-VaporOutput -LogicalId 'BackupLoadBalancerDNSName3' -Description 'The DNSName of the backup load balancer' -Value (Add-FnGetAtt -LogicalNameOfResource 'BackupLoadBalancer3' -AttributeName 'DNSName') -Condition 'CreateProdResources'))

            { Export-Vaporshell -VaporshellTemplate $template -Path $testPath -Force } | Should -Not -Throw
        }

        It 'Should show the correct types on each object' {
            $template = Import-Vaporshell -Path $testPath
            $template.Conditions | Should -BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Description | Should -BeOfType 'System.String'
            $template.Mappings | Should -BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Metadata | Should -BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Outputs | Should -BeOfType 'System.Management.Automation.PSCustomObject'
            $template.Resources | Should -BeOfType 'System.Management.Automation.PSCustomObject'
        }

        It 'Should run remaining condition functions' {
            $x = Add-ConAnd -Conditions (Add-ConIf -ConditionName 'CreateTestResources' -ValueIfTrue 'test' -ValueIfFalse "$_AWSNoValue"), (Add-ConNot -Condition (Add-FnImportValue -ValueToImport 'VPCName')), (Add-ConEquals -FirstValue (Add-FnRef 'Environment') -SecondValue 'prod'), (Add-ConOr -Conditions (Add-ConIf -ConditionName 'CreateTestResources' -ValueIfTrue 'test' -ValueIfFalse "$_AWSNoValue"), (Add-ConNot -Condition (Add-FnSplit -Delimiter ',' -SourceString 'test,string,goodness')))
            $x.PSTypeNames[0] | Should -Be 'Vaporshell.Condition.And'
        }

        It 'Should throw intrinsic functions' {
            { Add-FnJoin -ListOfValues 1 } | Should -Throw
            { Add-FnBase64 -ValueToEncode 1 } | Should -Throw
            { Add-FnGetAtt -LogicalNameOfResource 'Vapor' -AttributeName 1 } | Should -Throw
            { Add-FnFindInMap -MapName 0 -TopLevelKey 'First' -SecondLevelKey 'Second' } | Should -Throw
            { Add-FnFindInMap -MapName 'Map' -TopLevelKey 1 -SecondLevelKey 'Second' } | Should -Throw
            { Add-FnFindInMap -MapName 'Map' -TopLevelKey 'First' -SecondLevelKey 2 } | Should -Throw
            { Add-FnSplit -Delimiter ',' -SourceString 1 } | Should -Throw
            { Add-FnImportValue -ValueToImport 1 } | Should -Throw
            { Add-FnSub -String "www.`${Domain}" -Mapping @{ Domain = (Add-FnRef -Ref 'RootDomainName') } } | Should -Not -Throw
            { Add-FnSub -String "/opt/aws/bin/cfn-init -v --stack `${AWS::StackName} --resource LaunchConfig --configsets wordpress_install --region `${AWS::Region}" } | Should -Not -Throw
            { Add-FnGetAZs } | Should -Not -Throw
            { Add-FnGetAZs -Region $_AWSRegion } | Should -Not -Throw
            { Add-FnGetAZs -Region 1 } | Should -Throw
            { Add-FnSelect -Index 1 -ListOfObjects (Add-FnSplit -Delimiter ',' -SourceString 'one,two,three') } | Should -Not -Throw
            { Add-FnSelect -Index (@{}) -ListOfObjects (Add-FnSplit -Delimiter ',' -SourceString 'one,two,three') } | Should -Throw
            { Add-FnSelect -Index 1 -ListOfObjects 1 } | Should -Throw
        }

        It 'Should throw primary functions' {
            { New-VaporResource -LogicalId '!@#$%*&' } | Should -Throw 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
            { New-VaporResource -LogicalId 'Tests' -Properties 1 } | Should -Throw 'This parameter only accepts the following types: System.Management.Automation.PSCustomObject, Vaporshell.Resource.Properties, System.Collections.Hashtable. The current types of the value are: System.Int32, System.ValueType, System.Object.'
            { New-VaporResource -LogicalId 'Tests' -Properties ([PSCustomObject]@{ Name = 'Test' }) -Type 'AWS::EC2::Instance' -CreationPolicy 1 } | Should -Throw 'This parameter only accepts the following types: Vaporshell.Resource.CreationPolicy. The current types of the value are: System.Int32, System.ValueType, System.Object.'
            { New-VaporResource -LogicalId 'Tests' -Properties ([PSCustomObject]@{ Name = 'Test' }) -Type 'AWS::EC2::Instance' -UpdatePolicy 1 } | Should -Throw 'This parameter only accepts the following types: Vaporshell.Resource.UpdatePolicy. The current types of the value are: System.Int32, System.ValueType, System.Object.'
            { New-VaporResource -LogicalId 'Tests' -Properties ([PSCustomObject]@{ Name = 'Test' }) -Type 'AWS::EC2::Instance' -Metadata 1 } | Should -Throw 'This parameter only accepts the following types: System.Management.Automation.PSCustomObject. The current types of the value are: System.Int32, System.ValueType, System.Object.'
            { New-VaporMetadata -LogicalId '!@#$%*&' } | Should -Throw
            { New-VaporMetadata -LogicalId 'Test' -Metadata 1 } | Should -Throw
            { New-VaporMapping -LogicalId '!@#$%*&' } | Should -Throw
            { New-VaporMapping -LogicalId 'Test' -Map 1 } | Should -Throw
            { New-VaporCondition -LogicalId '!@#$%*&' } | Should -Throw
            { New-VaporCondition -LogicalId 'Test' -Condition 1 } | Should -Throw
            { New-VaporOutput -LogicalId '!@#$%*&' } | Should -Throw
            { New-VaporOutput -LogicalId 'Test' -Value 'String' -Export 'Export' } | Should -Not -Throw
            { New-VaporParameter -LogicalId '!@#$%*&' } | Should -Throw
            { New-VaporParameter -LogicalId 'PW' -Description "$(1..5000)" } | Should -Throw 'The description length needs to be less than 4000 characters long.'
            { New-VaporParameter -LogicalId 'PW' -NoEcho -Type String -AllowedPattern '.*' -MaxLength 50 -MinLength 1 -MaxValue 50 -MinValue 1 -Default 'woooo' } | Should -Not -Throw
        }

        It 'Should throw main commands' {
            # NOTE: the Add* calls below are .NET method invocations on the template
            # object, so PowerShell wraps the underlying error as
            #   Exception calling "AddX" with "N" argument(s): "<message>"
            # Pester's -Throw does a -like match, so the expected message is wrapped in
            # wildcards to match the inner text regardless of the method-call wrapper.
            $t = Initialize-Vaporshell
            { Export-Vaporshell -VaporshellTemplate $t } | Should -Throw 'Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum.'
            { $t.AddTransform('Fail') } | Should -Throw '*You must use one of the following object types with this parameter: Vaporshell.Transform.Include*'
            { $t.AddTransform((Add-Include -Location 's3://file.yaml')) } | Should -Not -Throw
            $t.AddResource((New-SAMSimpleTable -LogicalId 'Table'))
            $t.Transform = 'asfd'
            $t.AddResource((New-SAMSimpleTable -LogicalId 'Table2'))
            { Export-Vaporshell -VaporshellTemplate $t } | Should -Not -Throw
            { $t.AddResource('Fail') } | Should -Throw '*You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Resource*'
            { $t.AddCondition('Fail') } | Should -Throw '*You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Condition*'
            { $t.AddParameter('Fail') } | Should -Throw '*You must use one of the following object types with this parameter: Vaporshell.Parameter*'
            { $t.AddMetadata('Fail') } | Should -Throw '*You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Metadata*'
            { $t.AddMapping('Fail') } | Should -Throw '*You must use one of the following object types with this parameter: Vaporshell.Transform, Vaporshell.Mapping*'
        }
    }

    Context 'Map-typed properties render as a JSON object, not an array (backward-compat regression guard)' {
        # A map-shaped CloudFormation property (e.g. AWS::BedrockAgentCore::Runtime Tags,
        # which the resource schema defines via a $ref to a patternProperties "TagsMap"
        # definition) must expose a [System.Collections.Hashtable] parameter and emit a
        # JSON object. A previous schema-adapter change loosened the parameter to
        # [object], which flipped downstream Tag serialisation to a Key/Value array and
        # broke deploys of map-tagged resources. These guard against that regression.

        It 'New-VSBedrockAgentCoreRuntime -Tags parameter is typed [Hashtable]' {
            $p = (Get-Command New-VSBedrockAgentCoreRuntime).Parameters['Tags']
            $p.ParameterType.FullName | Should -Be 'System.Collections.Hashtable'
        }

        It 'Renders map-typed Tags as a JSON object (hashtable/PSCustomObject), not an array' {
            $resource = New-VSBedrockAgentCoreRuntime -LogicalId 'Runtime' -Tags @{ team = 'ecp'; env = 'dev' }
            $tags = $resource.Props.Properties.Tags
            # A map serialises to a single object; an array (the broken shape) would be
            # a collection of Key/Value objects.
            @($tags).Count | Should -Be 1
            $tagObj = @($tags)[0]
            $tagObj.team | Should -Be 'ecp'
            $tagObj.env | Should -Be 'dev'
            # It must NOT be the array-of-Key/Value shape.
            $tagObj.PSObject.Properties.Name | Should -Not -Contain 'Key'
        }
    }
}
