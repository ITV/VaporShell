function Add-VSGuardDutyDetectorCFNKubernetesConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::GuardDuty::Detector.CFNKubernetesConfiguration resource property to the template. Describes which Kubernetes protection data sources are enabled for the detector.

    .DESCRIPTION
        Adds an AWS::GuardDuty::Detector.CFNKubernetesConfiguration resource property to the template.
Describes which Kubernetes protection data sources are enabled for the detector.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfnkubernetesconfiguration.html

    .PARAMETER AuditLogs
        Describes whether Kubernetes audit logs are enabled as a data source for the detector.

        Type: CFNKubernetesAuditLogsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfnkubernetesconfiguration.html#cfn-guardduty-detector-cfnkubernetesconfiguration-auditlogs
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GuardDuty.Detector.CFNKubernetesConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AuditLogs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GuardDuty.Detector.CFNKubernetesConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
