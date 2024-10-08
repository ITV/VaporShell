function Add-VSSSMMaintenanceWindowTaskTaskInvocationParameters {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html

    .PARAMETER MaintenanceWindowRunCommandParameters
        Type: MaintenanceWindowRunCommandParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters
        UpdateType: Mutable

    .PARAMETER MaintenanceWindowAutomationParameters
        Type: MaintenanceWindowAutomationParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters
        UpdateType: Mutable

    .PARAMETER MaintenanceWindowStepFunctionsParameters
        Type: MaintenanceWindowStepFunctionsParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowstepfunctionsparameters
        UpdateType: Mutable

    .PARAMETER MaintenanceWindowLambdaParameters
        Type: MaintenanceWindowLambdaParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SSM.MaintenanceWindowTask.TaskInvocationParameters')]
    [cmdletbinding()]

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
