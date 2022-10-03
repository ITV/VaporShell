function Add-VSSageMakerMonitoringScheduleMonitoringInput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::MonitoringSchedule.MonitoringInput resource property to the template. The inputs for a monitoring job.

    .DESCRIPTION
        Adds an AWS::SageMaker::MonitoringSchedule.MonitoringInput resource property to the template.
The inputs for a monitoring job.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinput.html

    .PARAMETER EndpointInput
        The endpoint for a monitoring job.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringinput.html#cfn-sagemaker-monitoringschedule-monitoringinput-endpointinput
        UpdateType: Mutable
        Type: EndpointInput

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.MonitoringSchedule.MonitoringInput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $EndpointInput
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.MonitoringSchedule.MonitoringInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
