function Add-VSIoTEventsDetectorModelAction {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.Action resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.Action resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html

    .PARAMETER IotEvents
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotevents
        UpdateType: Mutable
        Type: IotEvents

    .PARAMETER Firehose
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-firehose
        UpdateType: Mutable
        Type: Firehose

    .PARAMETER DynamoDB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodb
        UpdateType: Mutable
        Type: DynamoDB

    .PARAMETER IotTopicPublish
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iottopicpublish
        UpdateType: Mutable
        Type: IotTopicPublish

    .PARAMETER DynamoDBv2
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-dynamodbv2
        UpdateType: Mutable
        Type: DynamoDBv2

    .PARAMETER IotSiteWise
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotsitewise
        UpdateType: Mutable
        Type: IotSiteWise

    .PARAMETER ResetTimer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-resettimer
        UpdateType: Mutable
        Type: ResetTimer

    .PARAMETER Sqs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sqs
        UpdateType: Mutable
        Type: Sqs

    .PARAMETER SetTimer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-settimer
        UpdateType: Mutable
        Type: SetTimer

    .PARAMETER Sns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sns
        UpdateType: Mutable
        Type: Sns

    .PARAMETER ClearTimer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-cleartimer
        UpdateType: Mutable
        Type: ClearTimer

    .PARAMETER Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-lambda
        UpdateType: Mutable
        Type: Lambda

    .PARAMETER SetVariable
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-setvariable
        UpdateType: Mutable
        Type: SetVariable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.Action')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IotEvents,

        [Parameter(Mandatory = $false)]
        $Firehose,

        [Parameter(Mandatory = $false)]
        $DynamoDB,

        [Parameter(Mandatory = $false)]
        $IotTopicPublish,

        [Parameter(Mandatory = $false)]
        $DynamoDBv2,

        [Parameter(Mandatory = $false)]
        $IotSiteWise,

        [Parameter(Mandatory = $false)]
        $ResetTimer,

        [Parameter(Mandatory = $false)]
        $Sqs,

        [Parameter(Mandatory = $false)]
        $SetTimer,

        [Parameter(Mandatory = $false)]
        $Sns,

        [Parameter(Mandatory = $false)]
        $ClearTimer,

        [Parameter(Mandatory = $false)]
        $Lambda,

        [Parameter(Mandatory = $false)]
        $SetVariable

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
