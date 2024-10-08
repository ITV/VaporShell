function Add-VSElastiCacheReplicationGroupDestinationDetails {
    <#
    .SYNOPSIS
        Adds an AWS::ElastiCache::ReplicationGroup.DestinationDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::ElastiCache::ReplicationGroup.DestinationDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-destinationdetails.html

    .PARAMETER CloudWatchLogsDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-destinationdetails.html#cfn-elasticache-replicationgroup-destinationdetails-cloudwatchlogsdetails
        Type: CloudWatchLogsDestinationDetails
        UpdateType: Mutable

    .PARAMETER KinesisFirehoseDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-destinationdetails.html#cfn-elasticache-replicationgroup-destinationdetails-kinesisfirehosedetails
        Type: KinesisFirehoseDestinationDetails
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ElastiCache.ReplicationGroup.DestinationDetails')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CloudWatchLogsDetails,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElastiCache.ReplicationGroup.DestinationDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
