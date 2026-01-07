function Add-VSAthenaWorkGroupMonitoringConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Athena::WorkGroup.MonitoringConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Athena::WorkGroup.MonitoringConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-monitoringconfiguration.html

    .PARAMETER S3LoggingConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-monitoringconfiguration.html#cfn-athena-workgroup-monitoringconfiguration-s3loggingconfiguration
        UpdateType: Mutable
        Type: S3LoggingConfiguration

    .PARAMETER ManagedLoggingConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-monitoringconfiguration.html#cfn-athena-workgroup-monitoringconfiguration-managedloggingconfiguration
        UpdateType: Mutable
        Type: ManagedLoggingConfiguration

    .PARAMETER CloudWatchLoggingConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-monitoringconfiguration.html#cfn-athena-workgroup-monitoringconfiguration-cloudwatchloggingconfiguration
        UpdateType: Mutable
        Type: CloudWatchLoggingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Athena.WorkGroup.MonitoringConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3LoggingConfiguration,

        [Parameter(Mandatory = $false)]
        $ManagedLoggingConfiguration,

        [Parameter(Mandatory = $false)]
        $CloudWatchLoggingConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Athena.WorkGroup.MonitoringConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
