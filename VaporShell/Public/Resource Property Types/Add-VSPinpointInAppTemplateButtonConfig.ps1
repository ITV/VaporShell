function Add-VSPinpointInAppTemplateButtonConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::InAppTemplate.ButtonConfig resource property to the template. Specifies the behavior of buttons that appear in an in-app message template.

    .DESCRIPTION
        Adds an AWS::Pinpoint::InAppTemplate.ButtonConfig resource property to the template.
Specifies the behavior of buttons that appear in an in-app message template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html

    .PARAMETER Android
        Optional button configuration to use for in-app messages sent to Android devices. This button configuration overrides the default button configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-android
        UpdateType: Mutable
        Type: OverrideButtonConfiguration

    .PARAMETER DefaultConfig
        Specifies the default behavior of a button that appears in an in-app message. You can optionally add button configurations that specifically apply to iOS, Android, or web browser users.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-defaultconfig
        UpdateType: Mutable
        Type: DefaultButtonConfiguration

    .PARAMETER IOS
        Optional button configuration to use for in-app messages sent to iOS devices. This button configuration overrides the default button configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-ios
        UpdateType: Mutable
        Type: OverrideButtonConfiguration

    .PARAMETER Web
        Optional button configuration to use for in-app messages sent to web applications. This button configuration overrides the default button configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-web
        UpdateType: Mutable
        Type: OverrideButtonConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.InAppTemplate.ButtonConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Android,
        [parameter(Mandatory = $false)]
        $DefaultConfig,
        [parameter(Mandatory = $false)]
        $IOS,
        [parameter(Mandatory = $false)]
        $Web
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.InAppTemplate.ButtonConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
