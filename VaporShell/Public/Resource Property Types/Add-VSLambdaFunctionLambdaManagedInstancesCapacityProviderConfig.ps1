function Add-VSLambdaFunctionLambdaManagedInstancesCapacityProviderConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::Function.LambdaManagedInstancesCapacityProviderConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lambda::Function.LambdaManagedInstancesCapacityProviderConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-lambdamanagedinstancescapacityproviderconfig.html

    .PARAMETER ExecutionEnvironmentMemoryGiBPerVCpu
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-lambdamanagedinstancescapacityproviderconfig.html#cfn-lambda-function-lambdamanagedinstancescapacityproviderconfig-executionenvironmentmemorygibpervcpu
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER CapacityProviderArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-lambdamanagedinstancescapacityproviderconfig.html#cfn-lambda-function-lambdamanagedinstancescapacityproviderconfig-capacityproviderarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER PerExecutionEnvironmentMaxConcurrency
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-lambdamanagedinstancescapacityproviderconfig.html#cfn-lambda-function-lambdamanagedinstancescapacityproviderconfig-perexecutionenvironmentmaxconcurrency
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lambda.Function.LambdaManagedInstancesCapacityProviderConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExecutionEnvironmentMemoryGiBPerVCpu,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CapacityProviderArn,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PerExecutionEnvironmentMaxConcurrency

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.Function.LambdaManagedInstancesCapacityProviderConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
