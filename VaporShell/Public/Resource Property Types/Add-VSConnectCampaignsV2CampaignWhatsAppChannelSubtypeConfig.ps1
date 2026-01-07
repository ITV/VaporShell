function Add-VSConnectCampaignsV2CampaignWhatsAppChannelSubtypeConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ConnectCampaignsV2::Campaign.WhatsAppChannelSubtypeConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::ConnectCampaignsV2::Campaign.WhatsAppChannelSubtypeConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-whatsappchannelsubtypeconfig.html

    .PARAMETER OutboundMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-whatsappchannelsubtypeconfig.html#cfn-connectcampaignsv2-campaign-whatsappchannelsubtypeconfig-outboundmode
        UpdateType: Mutable
        Type: WhatsAppOutboundMode

    .PARAMETER Capacity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-whatsappchannelsubtypeconfig.html#cfn-connectcampaignsv2-campaign-whatsappchannelsubtypeconfig-capacity
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER DefaultOutboundConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-whatsappchannelsubtypeconfig.html#cfn-connectcampaignsv2-campaign-whatsappchannelsubtypeconfig-defaultoutboundconfig
        UpdateType: Mutable
        Type: WhatsAppOutboundConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ConnectCampaignsV2.Campaign.WhatsAppChannelSubtypeConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $OutboundMode,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Capacity,

        [Parameter(Mandatory = $true)]
        $DefaultOutboundConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ConnectCampaignsV2.Campaign.WhatsAppChannelSubtypeConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
