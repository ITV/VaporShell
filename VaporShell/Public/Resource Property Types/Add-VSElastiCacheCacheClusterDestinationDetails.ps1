function Add-VSElastiCacheCacheClusterDestinationDetails {
    <#
    .SYNOPSIS
        Adds an AWS::ElastiCache::CacheCluster.DestinationDetails resource property to the template. Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.

    .DESCRIPTION
        Adds an AWS::ElastiCache::CacheCluster.DestinationDetails resource property to the template.
Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-destinationdetails.html

    .PARAMETER CloudWatchLogsDetails
        The configuration details of the CloudWatch Logs destination. Note that this field is marked as required but only if CloudWatch Logs was chosen as the destination.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-destinationdetails.html#cfn-elasticache-cachecluster-destinationdetails-cloudwatchlogsdetails
        Type: CloudWatchLogsDestinationDetails
        UpdateType: Mutable

    .PARAMETER KinesisFirehoseDetails
        The configuration details of the Kinesis Data Firehose destination. Note that this field is marked as required but only if Kinesis Data Firehose was chosen as the destination.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-destinationdetails.html#cfn-elasticache-cachecluster-destinationdetails-kinesisfirehosedetails
        Type: KinesisFirehoseDestinationDetails
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElastiCache.CacheCluster.DestinationDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CloudWatchLogsDetails,
        [parameter(Mandatory = $false)]
        $KinesisFirehoseDetails
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElastiCache.CacheCluster.DestinationDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
