function Add-VSPinpointCampaignInAppMessageButton {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Campaign.InAppMessageButton resource property to the template. Specifies the configuration of a button that appears in an in-app message.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Campaign.InAppMessageButton resource property to the template.
Specifies the configuration of a button that appears in an in-app message.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html

    .PARAMETER Web
        An object that defines the default behavior for a button in in-app messages for web applications.

        Type: OverrideButtonConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-web
        UpdateType: Mutable

    .PARAMETER DefaultConfig
        An object that defines the default behavior for a button in an in-app message.

        Type: DefaultButtonConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-defaultconfig
        UpdateType: Mutable

    .PARAMETER IOS
        An object that defines the default behavior for a button in in-app messages sent to iOS devices.

        Type: OverrideButtonConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-ios
        UpdateType: Mutable

    .PARAMETER Android
        An object that defines the default behavior for a button in in-app messages sent to Android.

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
        [parameter(Mandatory = $false)]
        $Web,
        [parameter(Mandatory = $false)]
        $DefaultConfig,
        [parameter(Mandatory = $false)]
        $IOS,
        [parameter(Mandatory = $false)]
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
