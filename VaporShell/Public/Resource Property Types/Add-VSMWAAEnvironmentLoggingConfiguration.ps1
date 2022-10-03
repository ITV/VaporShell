function Add-VSMWAAEnvironmentLoggingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MWAA::Environment.LoggingConfiguration resource property to the template. The type of Apache Airflow logs to send to CloudWatch Logs.

    .DESCRIPTION
        Adds an AWS::MWAA::Environment.LoggingConfiguration resource property to the template.
The type of Apache Airflow logs to send to CloudWatch Logs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html

    .PARAMETER DagProcessingLogs
        Defines the processing logs sent to CloudWatch Logs and the logging level to send.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-dagprocessinglogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER SchedulerLogs
        Defines the scheduler logs sent to CloudWatch Logs and the logging level to send.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-schedulerlogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER WebserverLogs
        Defines the web server logs sent to CloudWatch Logs and the logging level to send.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-webserverlogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER WorkerLogs
        Defines the worker logs sent to CloudWatch Logs and the logging level to send.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-workerlogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER TaskLogs
        Defines the task logs sent to CloudWatch Logs and the logging level to send.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-tasklogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MWAA.Environment.LoggingConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DagProcessingLogs,
        [parameter(Mandatory = $false)]
        $SchedulerLogs,
        [parameter(Mandatory = $false)]
        $WebserverLogs,
        [parameter(Mandatory = $false)]
        $WorkerLogs,
        [parameter(Mandatory = $false)]
        $TaskLogs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MWAA.Environment.LoggingConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
