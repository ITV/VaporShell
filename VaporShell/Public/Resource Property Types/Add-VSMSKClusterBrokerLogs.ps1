function Add-VSMSKClusterBrokerLogs {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.BrokerLogs resource property to the template. You can configure your Amazon MSK cluster to send broker logs to different destination types. This configuration specifies the details of these destinations.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.BrokerLogs resource property to the template.
You can configure your Amazon MSK cluster to send broker logs to different destination types. This configuration specifies the details of these destinations.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html

    .PARAMETER S3
        Details of the Amazon MSK destination for broker logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-s3
        UpdateType: Mutable
        Type: S3

    .PARAMETER CloudWatchLogs
        Details of the CloudWatch Logs destination for broker logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-cloudwatchlogs
        UpdateType: Mutable
        Type: CloudWatchLogs

    .PARAMETER Firehose
        Details of the Kinesis Data Firehose delivery stream that is the destination for broker logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-firehose
        UpdateType: Mutable
        Type: Firehose

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.BrokerLogs')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3,
        [parameter(Mandatory = $false)]
        $CloudWatchLogs,
        [parameter(Mandatory = $false)]
        $Firehose
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.BrokerLogs'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
