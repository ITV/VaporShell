function Add-VSMWAAEnvironmentLoggingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MWAA::Environment.LoggingConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MWAA::Environment.LoggingConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html

    .PARAMETER SchedulerLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-schedulerlogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER TaskLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-tasklogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER DagProcessingLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-dagprocessinglogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER WebserverLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-webserverlogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .PARAMETER WorkerLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-workerlogs
        UpdateType: Mutable
        Type: ModuleLoggingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MWAA.Environment.LoggingConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SchedulerLogs,

        [Parameter(Mandatory = $false)]
        $TaskLogs,

        [Parameter(Mandatory = $false)]
        $DagProcessingLogs,

        [Parameter(Mandatory = $false)]
        $WebserverLogs,

        [Parameter(Mandatory = $false)]
        $WorkerLogs

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
