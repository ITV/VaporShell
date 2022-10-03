function Add-VSSageMakerMonitoringScheduleScheduleConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::MonitoringSchedule.ScheduleConfig resource property to the template. Configuration details about the monitoring schedule.

    .DESCRIPTION
        Adds an AWS::SageMaker::MonitoringSchedule.ScheduleConfig resource property to the template.
Configuration details about the monitoring schedule.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html

    .PARAMETER ScheduleExpression
        A cron expression that describes details about the monitoring schedule.
Currently the only supported cron expressions are:
+ If you want to set the job to start every hour, please use the following:
Hourly: cron0 * ? * * *
+ If you want to start the job daily:
cron0 00-23] ? * * *
For example, the following are valid cron expressions:
+ Daily at noon UTC: cron0 12 ? * * *
+ Daily at midnight UTC: cron0 0 ? * * *
To support running every 6, 12 hours, the following are also supported:
cron0 00-23]/01-24] ? * * *
For example, the following are valid cron expressions:
+ Every 12 hours, starting at 5pm UTC: cron0 17/12 ? * * *
+ Every two hours starting at midnight: cron0 0/2 ? * * *
+ Even though the cron expression is set to start at 5PM UTC, note that there could be a delay of 0-20 minutes from the actual requested time to run the execution.
+ We recommend that if you would like a daily schedule, you do not provide this parameter. Amazon SageMaker will pick a time for running every day.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html#cfn-sagemaker-monitoringschedule-scheduleconfig-scheduleexpression
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.MonitoringSchedule.ScheduleConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ScheduleExpression
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.MonitoringSchedule.ScheduleConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
