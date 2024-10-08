function Add-VSPinpointInAppTemplateButtonConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::InAppTemplate.ButtonConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Pinpoint::InAppTemplate.ButtonConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html

    .PARAMETER Web
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-web
        UpdateType: Mutable
        Type: OverrideButtonConfiguration

    .PARAMETER DefaultConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-defaultconfig
        UpdateType: Mutable
        Type: DefaultButtonConfiguration

    .PARAMETER IOS
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-ios
        UpdateType: Mutable
        Type: OverrideButtonConfiguration

    .PARAMETER Android
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-buttonconfig.html#cfn-pinpoint-inapptemplate-buttonconfig-android
        UpdateType: Mutable
        Type: OverrideButtonConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Pinpoint.InAppTemplate.ButtonConfig')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.InAppTemplate.ButtonConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
