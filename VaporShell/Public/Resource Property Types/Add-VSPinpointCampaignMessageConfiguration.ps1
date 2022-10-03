function Add-VSPinpointCampaignMessageConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Campaign.MessageConfiguration resource property to the template. Specifies the message configuration settings for a campaign.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Campaign.MessageConfiguration resource property to the template.
Specifies the message configuration settings for a campaign.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html

    .PARAMETER APNSMessage
        The message that the campaign sends through the APNs Apple Push Notification service channel. If specified, this message overrides the default message.

        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-apnsmessage
        UpdateType: Mutable

    .PARAMETER BaiduMessage
        The message that the campaign sends through the Baidu Baidu Cloud Push channel. If specified, this message overrides the default message.

        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-baidumessage
        UpdateType: Mutable

    .PARAMETER DefaultMessage
        The default message that the campaign sends through all the channels that are configured for the campaign.

        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-defaultmessage
        UpdateType: Mutable

    .PARAMETER InAppMessage
        The default message for the in-app messaging channel. This message overrides the default message DefaultMessage.

        Type: CampaignInAppMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-inappmessage
        UpdateType: Mutable

    .PARAMETER EmailMessage
        The message that the campaign sends through the email channel. If specified, this message overrides the default message.

        Type: CampaignEmailMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-emailmessage
        UpdateType: Mutable

    .PARAMETER GCMMessage
        The message that the campaign sends through the GCM channel, which enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging FCM, formerly Google Cloud Messaging GCM, service. If specified, this message overrides the default message.

        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-gcmmessage
        UpdateType: Mutable

    .PARAMETER SMSMessage
        The message that the campaign sends through the SMS channel. If specified, this message overrides the default message.

        Type: CampaignSmsMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-smsmessage
        UpdateType: Mutable

    .PARAMETER CustomMessage
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: CampaignCustomMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-custommessage
        UpdateType: Mutable

    .PARAMETER ADMMessage
        The message that the campaign sends through the ADM Amazon Device Messaging channel. If specified, this message overrides the default message.

        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-admmessage
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.Campaign.MessageConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $APNSMessage,
        [parameter(Mandatory = $false)]
        $BaiduMessage,
        [parameter(Mandatory = $false)]
        $DefaultMessage,
        [parameter(Mandatory = $false)]
        $InAppMessage,
        [parameter(Mandatory = $false)]
        $EmailMessage,
        [parameter(Mandatory = $false)]
        $GCMMessage,
        [parameter(Mandatory = $false)]
        $SMSMessage,
        [parameter(Mandatory = $false)]
        $CustomMessage,
        [parameter(Mandatory = $false)]
        $ADMMessage
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Campaign.MessageConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
