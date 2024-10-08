function Add-VSMSKClusterBrokerLogs {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.BrokerLogs resource property to the template.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.BrokerLogs resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html

    .PARAMETER S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-s3
        UpdateType: Mutable
        Type: S3

    .PARAMETER Firehose
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-firehose
        UpdateType: Mutable
        Type: Firehose

    .PARAMETER CloudWatchLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-cloudwatchlogs
        UpdateType: Mutable
        Type: CloudWatchLogs

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MSK.Cluster.BrokerLogs')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3,

        [Parameter(Mandatory = $false)]
        $Firehose,

        [Parameter(Mandatory = $false)]
        $CloudWatchLogs

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
