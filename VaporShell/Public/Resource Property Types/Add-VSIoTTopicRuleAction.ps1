function Add-VSIoTTopicRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::TopicRule.Action resource property to the template. Describes the actions associated with a rule.

    .DESCRIPTION
        Adds an AWS::IoT::TopicRule.Action resource property to the template.
Describes the actions associated with a rule.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html

    .PARAMETER S3
        Write to an Amazon S3 bucket.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-s3
        UpdateType: Mutable
        Type: S3Action

    .PARAMETER CloudwatchAlarm
        Change the state of a CloudWatch alarm.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchalarm
        UpdateType: Mutable
        Type: CloudwatchAlarmAction

    .PARAMETER CloudwatchLogs
        Sends data to CloudWatch.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchlogs
        UpdateType: Mutable
        Type: CloudwatchLogsAction

    .PARAMETER IotEvents
        Sends an input to an AWS IoT Events detector.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotevents
        UpdateType: Mutable
        Type: IotEventsAction

    .PARAMETER Firehose
        Write to an Amazon Kinesis Firehose stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-firehose
        UpdateType: Mutable
        Type: FirehoseAction

    .PARAMETER Republish
        Publish to another MQTT topic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-republish
        UpdateType: Mutable
        Type: RepublishAction

    .PARAMETER StepFunctions
        Starts execution of a Step Functions state machine.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-stepfunctions
        UpdateType: Mutable
        Type: StepFunctionsAction

    .PARAMETER DynamoDB
        Write to a DynamoDB table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodb
        UpdateType: Mutable
        Type: DynamoDBAction

    .PARAMETER Http
        Send data to an HTTPS endpoint.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-http
        UpdateType: Mutable
        Type: HttpAction

    .PARAMETER DynamoDBv2
        Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows you to write each attribute in an MQTT message payload into a separate DynamoDB column.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodbv2
        UpdateType: Mutable
        Type: DynamoDBv2Action

    .PARAMETER CloudwatchMetric
        Capture a CloudWatch metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchmetric
        UpdateType: Mutable
        Type: CloudwatchMetricAction

    .PARAMETER IotSiteWise
        Sends data from the MQTT message that triggered the rule to AWS IoT SiteWise asset properties.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotsitewise
        UpdateType: Mutable
        Type: IotSiteWiseAction

    .PARAMETER Elasticsearch
        Write data to an Amazon OpenSearch Service domain.
The Elasticsearch action can only be used by existing rule actions. To create a new rule action or to update an existing rule action, use the OpenSearch rule action instead. For more information, see OpenSearchAction: https://docs.aws.amazon.com/iot/latest/apireference/API_OpenSearchAction.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-elasticsearch
        UpdateType: Mutable
        Type: ElasticsearchAction

    .PARAMETER Sqs
        Publish to an Amazon SQS queue.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sqs
        UpdateType: Mutable
        Type: SqsAction

    .PARAMETER Kinesis
        Write data to an Amazon Kinesis stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-kinesis
        UpdateType: Mutable
        Type: KinesisAction

    .PARAMETER IotAnalytics
        Sends message data to an AWS IoT Analytics channel.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotanalytics
        UpdateType: Mutable
        Type: IotAnalyticsAction

    .PARAMETER Sns
        Publish to an Amazon SNS topic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sns
        UpdateType: Mutable
        Type: SnsAction

    .PARAMETER Lambda
        Invoke a Lambda function.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-lambda
        UpdateType: Mutable
        Type: LambdaAction

    .PARAMETER Timestream
        Writes attributes from an MQTT message.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-timestream
        UpdateType: Mutable
        Type: TimestreamAction

    .PARAMETER Kafka
        Send messages to an Amazon Managed Streaming for Apache Kafka Amazon MSK or self-managed Apache Kafka cluster.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-kafka
        UpdateType: Mutable
        Type: KafkaAction

    .PARAMETER OpenSearch
        Write data to an Amazon OpenSearch Service domain.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-opensearch
        UpdateType: Mutable
        Type: OpenSearchAction

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.TopicRule.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3,
        [parameter(Mandatory = $false)]
        $CloudwatchAlarm,
        [parameter(Mandatory = $false)]
        $CloudwatchLogs,
        [parameter(Mandatory = $false)]
        $IotEvents,
        [parameter(Mandatory = $false)]
        $Firehose,
        [parameter(Mandatory = $false)]
        $Republish,
        [parameter(Mandatory = $false)]
        $StepFunctions,
        [parameter(Mandatory = $false)]
        $DynamoDB,
        [parameter(Mandatory = $false)]
        $Http,
        [parameter(Mandatory = $false)]
        $DynamoDBv2,
        [parameter(Mandatory = $false)]
        $CloudwatchMetric,
        [parameter(Mandatory = $false)]
        $IotSiteWise,
        [parameter(Mandatory = $false)]
        $Elasticsearch,
        [parameter(Mandatory = $false)]
        $Sqs,
        [parameter(Mandatory = $false)]
        $Kinesis,
        [parameter(Mandatory = $false)]
        $IotAnalytics,
        [parameter(Mandatory = $false)]
        $Sns,
        [parameter(Mandatory = $false)]
        $Lambda,
        [parameter(Mandatory = $false)]
        $Timestream,
        [parameter(Mandatory = $false)]
        $Kafka,
        [parameter(Mandatory = $false)]
        $OpenSearch
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.TopicRule.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
