Describe 'Schema Integration Tests' -Tag 'Integration' {

    BeforeAll {
        # Source the CI functions needed
        . "$PSScriptRoot/../../ci/ConvertFrom-ProviderSchema.ps1"
        . "$PSScriptRoot/../../ci/Convert-SpecToFunction.ps1"

        # Download a single schema to test with
        $script:SchemaUrl = 'https://schema.cloudformation.eu-west-1.amazonaws.com/CloudformationSchema.zip'
        $script:ZipPath = Join-Path ([System.IO.Path]::GetTempPath()) "VS-Test-Schema-$(Get-Date -Format 'yyyyMMddHHmmss').zip"
        $script:ExtractPath = Join-Path ([System.IO.Path]::GetTempPath()) "VS-Test-SchemaExtract-$(Get-Date -Format 'yyyyMMddHHmmss')"

        try {
            Invoke-WebRequest -Uri $script:SchemaUrl -OutFile $script:ZipPath -UseBasicParsing -ErrorAction Stop
            if (Test-Path $script:ExtractPath) { Remove-Item $script:ExtractPath -Recurse -Force }
            Expand-Archive -Path $script:ZipPath -DestinationPath $script:ExtractPath -Force
            $script:SchemaDownloaded = $true
        } catch {
            $script:SchemaDownloaded = $false
            Write-Warning "Could not download schema zip - integration tests will fail: $_"
        }
    }

    AfterAll {
        # Clean up temp files
        if ($script:ZipPath -and (Test-Path $script:ZipPath)) { Remove-Item $script:ZipPath -Force -ErrorAction SilentlyContinue }
        if ($script:ExtractPath -and (Test-Path $script:ExtractPath)) { Remove-Item $script:ExtractPath -Recurse -Force -ErrorAction SilentlyContinue }
    }

    Context 'Schema download and extraction' {
        It 'Successfully downloads the schema zip from eu-west-1' {
            $script:SchemaDownloaded | Should -Be $true
        }

        It 'Zip contains JSON schema files' {
            $files = Get-ChildItem $script:ExtractPath -Filter '*.json'
            $files.Count | Should -BeGreaterThan 100
        }

        It 'Contains the S3 Bucket schema' {
            Test-Path (Join-Path $script:ExtractPath 'aws-s3-bucket.json') | Should -Be $true
        }

        It 'Contains the EC2 Instance schema' {
            Test-Path (Join-Path $script:ExtractPath 'aws-ec2-instance.json') | Should -Be $true
        }
    }

    Context 'ConvertFrom-ProviderSchema with real S3 Bucket schema' {
        BeforeAll {
            $s3SchemaPath = Join-Path $script:ExtractPath 'aws-s3-bucket.json'
            $script:S3Schema = Get-Content $s3SchemaPath -Raw | ConvertFrom-Json
            $script:S3Result = ConvertFrom-ProviderSchema -SchemaObject $script:S3Schema
        }

        It 'Returns AWS::S3::Bucket as resource name' {
            $script:S3Result.ResourceType.Name | Should -Be 'AWS::S3::Bucket'
        }

        It 'Has BucketName property' {
            $script:S3Result.ResourceType.Value.Properties.BucketName | Should -Not -BeNullOrEmpty
        }

        It 'BucketName is a String type' {
            $script:S3Result.ResourceType.Value.Properties.BucketName.PrimitiveType | Should -Be 'String'
        }

        It 'Tags property is a List with ItemType Tag' {
            $script:S3Result.ResourceType.Value.Properties.Tags.Type | Should -Be 'List'
            $script:S3Result.ResourceType.Value.Properties.Tags.ItemType | Should -Be 'Tag'
        }

        It 'Generates multiple PropertyTypes from definitions' {
            $script:S3Result.PropertyTypes.Count | Should -BeGreaterThan 10
        }

        It 'Has LifecycleConfiguration property type' {
            $script:S3Result.PropertyTypes.Keys | Should -Contain 'AWS::S3::Bucket.LifecycleConfiguration'
        }
    }

    Context 'ConvertFrom-ProviderSchema with real EC2 Instance schema' {
        BeforeAll {
            $ec2SchemaPath = Join-Path $script:ExtractPath 'aws-ec2-instance.json'
            $script:EC2Schema = Get-Content $ec2SchemaPath -Raw | ConvertFrom-Json
            $script:EC2Result = ConvertFrom-ProviderSchema -SchemaObject $script:EC2Schema
        }

        It 'Returns AWS::EC2::Instance as resource name' {
            $script:EC2Result.ResourceType.Name | Should -Be 'AWS::EC2::Instance'
        }

        It 'Has InstanceType property as String' {
            $script:EC2Result.ResourceType.Value.Properties.InstanceType.PrimitiveType | Should -Be 'String'
        }

        It 'Has SecurityGroupIds as List' {
            $script:EC2Result.ResourceType.Value.Properties.SecurityGroupIds.Type | Should -Be 'List'
        }

        It 'Has Tags property as List with ItemType Tag' {
            $script:EC2Result.ResourceType.Value.Properties.Tags.Type | Should -Be 'List'
            $script:EC2Result.ResourceType.Value.Properties.Tags.ItemType | Should -Be 'Tag'
        }
    }

    Context 'End-to-end: Convert-SpecToFunction generates valid PowerShell from real schema' {
        BeforeAll {
            # Use the real S3 bucket schema to generate a function file
            $s3SchemaPath = Join-Path $script:ExtractPath 'aws-s3-bucket.json'
            $s3Schema = Get-Content $s3SchemaPath -Raw | ConvertFrom-Json
            $s3Converted = ConvertFrom-ProviderSchema -SchemaObject $s3Schema

            # Convert-SpecToFunction writes to $PSScriptRoot/../VaporShell/Public/...
            # which resolves to the real repo directories since we source from ci/
            try {
                Convert-SpecToFunction -Resource $s3Converted.ResourceType -ResourceType Resource
                $script:GeneratedResourceFile = Get-ChildItem "$PSScriptRoot/../../VaporShell/Public/Resource Types" -Filter 'New-VSS3Bucket.ps1' -ErrorAction SilentlyContinue
            } catch {
                Write-Warning "Resource generation failed: $_"
            }

            # Generate one property type
            $lifecyclePT = $s3Converted.PropertyTypes['AWS::S3::Bucket.LifecycleConfiguration']
            if ($lifecyclePT) {
                try {
                    Convert-SpecToFunction -Resource $lifecyclePT -ResourceType Property
                    $script:GeneratedPropertyFile = Get-ChildItem "$PSScriptRoot/../../VaporShell/Public/Resource Property Types" -Filter 'Add-VSS3BucketLifecycleConfiguration.ps1' -ErrorAction SilentlyContinue
                } catch {
                    Write-Warning "Property generation failed: $_"
                }
            }
        }

        It 'Generates New-VSS3Bucket.ps1 resource function' {
            $script:GeneratedResourceFile | Should -Not -BeNullOrEmpty
        }

        It 'Generated resource function is valid PowerShell (zero parse errors)' {
            $errors = $null
            $null = [System.Management.Automation.PSParser]::Tokenize(
                (Get-Content $script:GeneratedResourceFile.FullName -Raw), [ref]$errors
            )
            $errors.Count | Should -Be 0
        }

        It 'Generated resource function contains correct function name' {
            $content = Get-Content $script:GeneratedResourceFile.FullName -Raw
            $content | Should -Match 'function New-VSS3Bucket'
        }

        It 'Generated resource function contains BucketName parameter' {
            $content = Get-Content $script:GeneratedResourceFile.FullName -Raw
            $content | Should -Match '\$BucketName'
        }

        It 'Generated resource function contains Tags parameter with TransformTag' {
            $content = Get-Content $script:GeneratedResourceFile.FullName -Raw
            $content | Should -Match 'TransformTag'
        }

        It 'Generated resource function contains LogicalId parameter' {
            $content = Get-Content $script:GeneratedResourceFile.FullName -Raw
            $content | Should -Match '\$LogicalId'
        }

        It 'Generated resource function outputs correct type' {
            $content = Get-Content $script:GeneratedResourceFile.FullName -Raw
            $content | Should -Match "OutputType\('Vaporshell\.Resource\.S3\.Bucket'\)"
        }

        It 'Generates Add-VSS3BucketLifecycleConfiguration.ps1 property function' {
            $script:GeneratedPropertyFile | Should -Not -BeNullOrEmpty
        }

        It 'Generated property function is valid PowerShell (zero parse errors)' {
            $errors = $null
            $null = [System.Management.Automation.PSParser]::Tokenize(
                (Get-Content $script:GeneratedPropertyFile.FullName -Raw), [ref]$errors
            )
            $errors.Count | Should -Be 0
        }

        It 'Generated property function contains correct function name' {
            $content = Get-Content $script:GeneratedPropertyFile.FullName -Raw
            $content | Should -Match 'function Add-VSS3BucketLifecycleConfiguration'
        }
    }
}
