function Add-VSIoTTopicRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::TopicRule.Action resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoT::TopicRule.Action resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html

    .PARAMETER S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-s3
        UpdateType: Mutable
        Type: S3Action

    .PARAMETER CloudwatchAlarm
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchalarm
        UpdateType: Mutable
        Type: CloudwatchAlarmAction

    .PARAMETER IotEvents
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotevents
        UpdateType: Mutable
        Type: IotEventsAction

    .PARAMETER Firehose
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-firehose
        UpdateType: Mutable
        Type: FirehoseAction

    .PARAMETER Republish
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-republish
        UpdateType: Mutable
        Type: RepublishAction

    .PARAMETER Kafka
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-kafka
        UpdateType: Mutable
        Type: KafkaAction

    .PARAMETER StepFunctions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-stepfunctions
        UpdateType: Mutable
        Type: StepFunctionsAction

    .PARAMETER DynamoDB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodb
        UpdateType: Mutable
        Type: DynamoDBAction

    .PARAMETER Http
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-http
        UpdateType: Mutable
        Type: HttpAction

    .PARAMETER OpenSearch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-opensearch
        UpdateType: Mutable
        Type: OpenSearchAction

    .PARAMETER DynamoDBv2
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodbv2
        UpdateType: Mutable
        Type: DynamoDBv2Action

    .PARAMETER CloudwatchMetric
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchmetric
        UpdateType: Mutable
        Type: CloudwatchMetricAction

    .PARAMETER IotSiteWise
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotsitewise
        UpdateType: Mutable
        Type: IotSiteWiseAction

    .PARAMETER Elasticsearch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-elasticsearch
        UpdateType: Mutable
        Type: ElasticsearchAction

    .PARAMETER Sqs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sqs
        UpdateType: Mutable
        Type: SqsAction

    .PARAMETER Kinesis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-kinesis
        UpdateType: Mutable
        Type: KinesisAction

    .PARAMETER CloudwatchLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchlogs
        UpdateType: Mutable
        Type: CloudwatchLogsAction

    .PARAMETER Timestream
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-timestream
        UpdateType: Mutable
        Type: TimestreamAction

    .PARAMETER IotAnalytics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotanalytics
        UpdateType: Mutable
        Type: IotAnalyticsAction

    .PARAMETER Sns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sns
        UpdateType: Mutable
        Type: SnsAction

    .PARAMETER Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-lambda
        UpdateType: Mutable
        Type: LambdaAction

    .PARAMETER Location
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-location
        UpdateType: Mutable
        Type: LocationAction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoT.TopicRule.Action')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3,

        [Parameter(Mandatory = $false)]
        $CloudwatchAlarm,

        [Parameter(Mandatory = $false)]
        $IotEvents,

        [Parameter(Mandatory = $false)]
        $Firehose,

        [Parameter(Mandatory = $false)]
        $Republish,

        [Parameter(Mandatory = $false)]
        $Kafka,

        [Parameter(Mandatory = $false)]
        $StepFunctions,

        [Parameter(Mandatory = $false)]
        $DynamoDB,

        [Parameter(Mandatory = $false)]
        $Http,

        [Parameter(Mandatory = $false)]
        $OpenSearch,

        [Parameter(Mandatory = $false)]
        $DynamoDBv2,

        [Parameter(Mandatory = $false)]
        $CloudwatchMetric,

        [Parameter(Mandatory = $false)]
        $IotSiteWise,

        [Parameter(Mandatory = $false)]
        $Elasticsearch,

        [Parameter(Mandatory = $false)]
        $Sqs,

        [Parameter(Mandatory = $false)]
        $Kinesis,

        [Parameter(Mandatory = $false)]
        $CloudwatchLogs,

        [Parameter(Mandatory = $false)]
        $Timestream,

        [Parameter(Mandatory = $false)]
        $IotAnalytics,

        [Parameter(Mandatory = $false)]
        $Sns,

        [Parameter(Mandatory = $false)]
        $Lambda,

        [Parameter(Mandatory = $false)]
        $Location

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
