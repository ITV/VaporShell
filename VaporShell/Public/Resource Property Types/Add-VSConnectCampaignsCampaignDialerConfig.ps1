function Add-VSConnectCampaignsCampaignDialerConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ConnectCampaigns::Campaign.DialerConfig resource property to the template. 

    .DESCRIPTION
        Adds an AWS::ConnectCampaigns::Campaign.DialerConfig resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-dialerconfig.html

    .PARAMETER PredictiveDialerConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-dialerconfig.html#cfn-connectcampaigns-campaign-dialerconfig-predictivedialerconfig
        UpdateType: Mutable
        Type: PredictiveDialerConfig

    .PARAMETER ProgressiveDialerConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-dialerconfig.html#cfn-connectcampaigns-campaign-dialerconfig-progressivedialerconfig
        UpdateType: Mutable
        Type: ProgressiveDialerConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ConnectCampaigns.Campaign.DialerConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PredictiveDialerConfig,
        [parameter(Mandatory = $false)]
        $ProgressiveDialerConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ConnectCampaigns.Campaign.DialerConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
