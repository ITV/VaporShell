function Add-VSIoTEventsDetectorModelAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.Action resource property to the template. An action to be performed when the condition is TRUE.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.Action resource property to the template.
An action to be performed when the condition is TRUE.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html

    .PARAMETER ClearTimer
        Information needed to clear the timer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-cleartimer
        UpdateType: Mutable
        Type: ClearTimer

    .PARAMETER DynamoDB
        Writes to the DynamoDB table that you created. The default action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can customize the payload: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html. One column of the DynamoDB table receives all attribute-value pairs in the payload that you specify. For more information, see Actions: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html in * AWS IoT Events Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodb
        UpdateType: Mutable
        Type: DynamoDB

    .PARAMETER DynamoDBv2
        Writes to the DynamoDB table that you created. The default action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can customize the payload: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html. A separate column of the DynamoDB table receives one attribute-value pair in the payload that you specify. For more information, see Actions: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html in * AWS IoT Events Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodbv2
        UpdateType: Mutable
        Type: DynamoDBv2

    .PARAMETER Firehose
        Sends information about the detector model instance and the event that triggered the action to an Amazon Kinesis Data Firehose delivery stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-firehose
        UpdateType: Mutable
        Type: Firehose

    .PARAMETER IotEvents
        Sends AWS IoT Events input, which passes information about the detector model instance and the event that triggered the action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotevents
        UpdateType: Mutable
        Type: IotEvents

    .PARAMETER IotSiteWise
        Sends information about the detector model instance and the event that triggered the action to an asset property in AWS IoT SiteWise .

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotsitewise
        UpdateType: Mutable
        Type: IotSiteWise

    .PARAMETER IotTopicPublish
        Publishes an MQTT message with the given topic to the AWS IoT message broker.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iottopicpublish
        UpdateType: Mutable
        Type: IotTopicPublish

    .PARAMETER Lambda
        Calls a Lambda function, passing in information about the detector model instance and the event that triggered the action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-lambda
        UpdateType: Mutable
        Type: Lambda

    .PARAMETER ResetTimer
        Information needed to reset the timer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-resettimer
        UpdateType: Mutable
        Type: ResetTimer

    .PARAMETER SetTimer
        Information needed to set the timer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-settimer
        UpdateType: Mutable
        Type: SetTimer

    .PARAMETER SetVariable
        Sets a variable to a specified value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-setvariable
        UpdateType: Mutable
        Type: SetVariable

    .PARAMETER Sns
        Sends an Amazon SNS message.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sns
        UpdateType: Mutable
        Type: Sns

    .PARAMETER Sqs
        Sends an Amazon SNS message.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sqs
        UpdateType: Mutable
        Type: Sqs

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ClearTimer,
        [parameter(Mandatory = $false)]
        $DynamoDB,
        [parameter(Mandatory = $false)]
        $DynamoDBv2,
        [parameter(Mandatory = $false)]
        $Firehose,
        [parameter(Mandatory = $false)]
        $IotEvents,
        [parameter(Mandatory = $false)]
        $IotSiteWise,
        [parameter(Mandatory = $false)]
        $IotTopicPublish,
        [parameter(Mandatory = $false)]
        $Lambda,
        [parameter(Mandatory = $false)]
        $ResetTimer,
        [parameter(Mandatory = $false)]
        $SetTimer,
        [parameter(Mandatory = $false)]
        $SetVariable,
        [parameter(Mandatory = $false)]
        $Sns,
        [parameter(Mandatory = $false)]
        $Sqs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.DetectorModel.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
