function Add-VSPinpointCampaignInAppMessageButton {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Campaign.InAppMessageButton resource property to the template.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Campaign.InAppMessageButton resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html

    .PARAMETER Web
        Type: OverrideButtonConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-web
        UpdateType: Mutable

    .PARAMETER DefaultConfig
        Type: DefaultButtonConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-defaultconfig
        UpdateType: Mutable

    .PARAMETER IOS
        Type: OverrideButtonConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-ios
        UpdateType: Mutable

    .PARAMETER Android
        Type: OverrideButtonConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-android
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Pinpoint.Campaign.InAppMessageButton')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Web,

        [Parameter(Mandatory = $false)]
        $DefaultConfig,

        [Parameter(Mandatory = $false)]
        $IOS,

        [Parameter(Mandatory = $false)]
        $Android

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Campaign.InAppMessageButton'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
