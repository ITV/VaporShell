function Add-VSIoTEventsAlarmModelAlarmAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::AlarmModel.AlarmAction resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTEvents::AlarmModel.AlarmAction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html

    .PARAMETER DynamoDBv2
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-dynamodbv2
        UpdateType: Mutable
        Type: DynamoDBv2

    .PARAMETER IotEvents
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-iotevents
        UpdateType: Mutable
        Type: IotEvents

    .PARAMETER IotSiteWise
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-iotsitewise
        UpdateType: Mutable
        Type: IotSiteWise

    .PARAMETER Sqs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-sqs
        UpdateType: Mutable
        Type: Sqs

    .PARAMETER Firehose
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-firehose
        UpdateType: Mutable
        Type: Firehose

    .PARAMETER DynamoDB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-dynamodb
        UpdateType: Mutable
        Type: DynamoDB

    .PARAMETER IotTopicPublish
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-iottopicpublish
        UpdateType: Mutable
        Type: IotTopicPublish

    .PARAMETER Sns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-sns
        UpdateType: Mutable
        Type: Sns

    .PARAMETER Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmaction.html#cfn-iotevents-alarmmodel-alarmaction-lambda
        UpdateType: Mutable
        Type: Lambda

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTEvents.AlarmModel.AlarmAction')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DynamoDBv2,

        [Parameter(Mandatory = $false)]
        $IotEvents,

        [Parameter(Mandatory = $false)]
        $IotSiteWise,

        [Parameter(Mandatory = $false)]
        $Sqs,

        [Parameter(Mandatory = $false)]
        $Firehose,

        [Parameter(Mandatory = $false)]
        $DynamoDB,

        [Parameter(Mandatory = $false)]
        $IotTopicPublish,

        [Parameter(Mandatory = $false)]
        $Sns,

        [Parameter(Mandatory = $false)]
        $Lambda

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.AlarmModel.AlarmAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
