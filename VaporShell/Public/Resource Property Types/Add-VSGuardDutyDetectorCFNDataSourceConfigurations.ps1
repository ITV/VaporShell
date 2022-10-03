function Add-VSGuardDutyDetectorCFNDataSourceConfigurations {
    <#
    .SYNOPSIS
        Adds an AWS::GuardDuty::Detector.CFNDataSourceConfigurations resource property to the template. Describes whether S3 data event logs or Kubernetes audit logs will be enabled as a data source when the detector is created.

    .DESCRIPTION
        Adds an AWS::GuardDuty::Detector.CFNDataSourceConfigurations resource property to the template.
Describes whether S3 data event logs or Kubernetes audit logs will be enabled as a data source when the detector is created.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html

    .PARAMETER MalwareProtection
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: CFNMalwareProtectionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-malwareprotection
        UpdateType: Mutable

    .PARAMETER S3Logs
        Describes whether S3 data event logs are enabled as a data source.

        Type: CFNS3LogsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-s3logs
        UpdateType: Mutable

    .PARAMETER Kubernetes
        Describes which Kuberentes data sources are enabled for a detector.

        Type: CFNKubernetesConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-kubernetes
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GuardDuty.Detector.CFNDataSourceConfigurations')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MalwareProtection,
        [parameter(Mandatory = $false)]
        $S3Logs,
        [parameter(Mandatory = $false)]
        $Kubernetes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GuardDuty.Detector.CFNDataSourceConfigurations'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
