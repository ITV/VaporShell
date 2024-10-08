function Add-VSCloudFrontMonitoringSubscriptionMonitoringSubscription {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::MonitoringSubscription.MonitoringSubscription resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFront::MonitoringSubscription.MonitoringSubscription resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-monitoringsubscription-monitoringsubscription.html

    .PARAMETER RealtimeMetricsSubscriptionConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-monitoringsubscription-monitoringsubscription.html#cfn-cloudfront-monitoringsubscription-monitoringsubscription-realtimemetricssubscriptionconfig
        UpdateType: Mutable
        Type: RealtimeMetricsSubscriptionConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFront.MonitoringSubscription.MonitoringSubscription')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RealtimeMetricsSubscriptionConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.MonitoringSubscription.MonitoringSubscription'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
