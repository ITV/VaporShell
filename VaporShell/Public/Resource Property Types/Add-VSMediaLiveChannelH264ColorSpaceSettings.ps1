function Add-VSMediaLiveChannelH264ColorSpaceSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.H264ColorSpaceSettings resource property to the template. Settings for configuring color space in an H264 video encode.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.H264ColorSpaceSettings resource property to the template.
Settings for configuring color space in an H264 video encode.

The parent of this entity is H264Settings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html

    .PARAMETER Rec601Settings
        Settings to configure the handling of Rec601 color space.

        Type: Rec601Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec601settings
        UpdateType: Mutable

    .PARAMETER Rec709Settings
        Settings to configure the handling of Rec709 color space.

        Type: Rec709Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec709settings
        UpdateType: Mutable

    .PARAMETER ColorSpacePassthroughSettings
        Passthrough applies no color space conversion to the output.

        Type: ColorSpacePassthroughSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-colorspacepassthroughsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.H264ColorSpaceSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Rec601Settings,
        [parameter(Mandatory = $false)]
        $Rec709Settings,
        [parameter(Mandatory = $false)]
        $ColorSpacePassthroughSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.H264ColorSpaceSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
