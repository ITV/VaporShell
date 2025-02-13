function Add-VSPinpointCampaignMessageConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Campaign.MessageConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Campaign.MessageConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html

    .PARAMETER APNSMessage
        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-apnsmessage
        UpdateType: Mutable

    .PARAMETER BaiduMessage
        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-baidumessage
        UpdateType: Mutable

    .PARAMETER DefaultMessage
        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-defaultmessage
        UpdateType: Mutable

    .PARAMETER InAppMessage
        Type: CampaignInAppMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-inappmessage
        UpdateType: Mutable

    .PARAMETER EmailMessage
        Type: CampaignEmailMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-emailmessage
        UpdateType: Mutable

    .PARAMETER GCMMessage
        Type: Message
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-gcmmessage
        UpdateType: Mutable

    .PARAMETER SMSMessage
        Type: CampaignSmsMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-smsmessage
        UpdateType: Mutable

    .PARAMETER CustomMessage
        Type: CampaignCustomMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-custommessage
        UpdateType: Mutable

    .PARAMETER ADMMessage
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
        [Parameter(Mandatory = $false)]
        $APNSMessage,

        [Parameter(Mandatory = $false)]
        $BaiduMessage,

        [Parameter(Mandatory = $false)]
        $DefaultMessage,

        [Parameter(Mandatory = $false)]
        $InAppMessage,

        [Parameter(Mandatory = $false)]
        $EmailMessage,

        [Parameter(Mandatory = $false)]
        $GCMMessage,

        [Parameter(Mandatory = $false)]
        $SMSMessage,

        [Parameter(Mandatory = $false)]
        $CustomMessage,

        [Parameter(Mandatory = $false)]
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
