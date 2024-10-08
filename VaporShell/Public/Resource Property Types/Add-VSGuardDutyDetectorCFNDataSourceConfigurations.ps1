function Add-VSGuardDutyDetectorCFNDataSourceConfigurations {
    <#
    .SYNOPSIS
        Adds an AWS::GuardDuty::Detector.CFNDataSourceConfigurations resource property to the template.

    .DESCRIPTION
        Adds an AWS::GuardDuty::Detector.CFNDataSourceConfigurations resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html

    .PARAMETER MalwareProtection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-malwareprotection
        UpdateType: Mutable
        Type: CFNMalwareProtectionConfiguration

    .PARAMETER S3Logs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-s3logs
        UpdateType: Mutable
        Type: CFNS3LogsConfiguration

    .PARAMETER Kubernetes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-kubernetes
        UpdateType: Mutable
        Type: CFNKubernetesConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GuardDuty.Detector.CFNDataSourceConfigurations')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MalwareProtection,

        [Parameter(Mandatory = $false)]
        $S3Logs,

        [Parameter(Mandatory = $false)]
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
