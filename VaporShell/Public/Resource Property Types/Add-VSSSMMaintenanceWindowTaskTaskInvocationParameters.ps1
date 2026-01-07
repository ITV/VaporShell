function Add-VSSSMMaintenanceWindowTaskTaskInvocationParameters {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html

    .PARAMETER MaintenanceWindowRunCommandParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters
        UpdateType: Mutable
        Type: MaintenanceWindowRunCommandParameters

    .PARAMETER MaintenanceWindowAutomationParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters
        UpdateType: Mutable
        Type: MaintenanceWindowAutomationParameters

    .PARAMETER MaintenanceWindowStepFunctionsParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowstepfunctionsparameters
        UpdateType: Mutable
        Type: MaintenanceWindowStepFunctionsParameters

    .PARAMETER MaintenanceWindowLambdaParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters
        UpdateType: Mutable
        Type: MaintenanceWindowLambdaParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SSM.MaintenanceWindowTask.TaskInvocationParameters')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MaintenanceWindowRunCommandParameters,

        [Parameter(Mandatory = $false)]
        $MaintenanceWindowAutomationParameters,

        [Parameter(Mandatory = $false)]
        $MaintenanceWindowStepFunctionsParameters,

        [Parameter(Mandatory = $false)]
        $MaintenanceWindowLambdaParameters

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.MaintenanceWindowTask.TaskInvocationParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
