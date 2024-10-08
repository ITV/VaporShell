function Add-VSEMRServerlessApplicationMonitoringConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::EMRServerless::Application.MonitoringConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::EMRServerless::Application.MonitoringConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-monitoringconfiguration.html

    .PARAMETER S3MonitoringConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-monitoringconfiguration.html#cfn-emrserverless-application-monitoringconfiguration-s3monitoringconfiguration
        UpdateType: Conditional
        Type: S3MonitoringConfiguration

    .PARAMETER ManagedPersistenceMonitoringConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-monitoringconfiguration.html#cfn-emrserverless-application-monitoringconfiguration-managedpersistencemonitoringconfiguration
        UpdateType: Conditional
        Type: ManagedPersistenceMonitoringConfiguration

    .PARAMETER CloudWatchLoggingConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-monitoringconfiguration.html#cfn-emrserverless-application-monitoringconfiguration-cloudwatchloggingconfiguration
        UpdateType: Conditional
        Type: CloudWatchLoggingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EMRServerless.Application.MonitoringConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3MonitoringConfiguration,

        [Parameter(Mandatory = $false)]
        $ManagedPersistenceMonitoringConfiguration,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMRServerless.Application.MonitoringConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
