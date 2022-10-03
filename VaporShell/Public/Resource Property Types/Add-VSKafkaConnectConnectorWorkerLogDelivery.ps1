function Add-VSKafkaConnectConnectorWorkerLogDelivery {
    <#
    .SYNOPSIS
        Adds an AWS::KafkaConnect::Connector.WorkerLogDelivery resource property to the template. Workers can send worker logs to different destination types. This configuration specifies the details of these destinations.

    .DESCRIPTION
        Adds an AWS::KafkaConnect::Connector.WorkerLogDelivery resource property to the template.
Workers can send worker logs to different destination types. This configuration specifies the details of these destinations.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html

    .PARAMETER CloudWatchLogs
        Details about delivering logs to Amazon CloudWatch Logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html#cfn-kafkaconnect-connector-workerlogdelivery-cloudwatchlogs
        UpdateType: Immutable
        Type: CloudWatchLogsLogDelivery

    .PARAMETER Firehose
        Details about delivering logs to Amazon Kinesis Data Firehose.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html#cfn-kafkaconnect-connector-workerlogdelivery-firehose
        UpdateType: Immutable
        Type: FirehoseLogDelivery

    .PARAMETER S3
        Details about delivering logs to Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerlogdelivery.html#cfn-kafkaconnect-connector-workerlogdelivery-s3
        UpdateType: Immutable
        Type: S3LogDelivery

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KafkaConnect.Connector.WorkerLogDelivery')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CloudWatchLogs,
        [parameter(Mandatory = $false)]
        $Firehose,
        [parameter(Mandatory = $false)]
        $S3
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KafkaConnect.Connector.WorkerLogDelivery'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
