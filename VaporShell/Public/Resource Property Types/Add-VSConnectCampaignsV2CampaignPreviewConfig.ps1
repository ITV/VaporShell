function Add-VSConnectCampaignsV2CampaignPreviewConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ConnectCampaignsV2::Campaign.PreviewConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::ConnectCampaignsV2::Campaign.PreviewConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html

    .PARAMETER TimeoutConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html#cfn-connectcampaignsv2-campaign-previewconfig-timeoutconfig
        UpdateType: Mutable
        Type: TimeoutConfig

    .PARAMETER AgentActions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html#cfn-connectcampaignsv2-campaign-previewconfig-agentactions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER BandwidthAllocation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-previewconfig.html#cfn-connectcampaignsv2-campaign-previewconfig-bandwidthallocation
        UpdateType: Mutable
        PrimitiveType: Double

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ConnectCampaignsV2.Campaign.PreviewConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $TimeoutConfig,

        [Parameter(Mandatory = $false)]
        $AgentActions,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BandwidthAllocation

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ConnectCampaignsV2.Campaign.PreviewConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
