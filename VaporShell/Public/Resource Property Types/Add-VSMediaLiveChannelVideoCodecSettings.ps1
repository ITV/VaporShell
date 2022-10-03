function Add-VSMediaLiveChannelVideoCodecSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.VideoCodecSettings resource property to the template. The settings for the video codec in the output.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.VideoCodecSettings resource property to the template.
The settings for the video codec in the output.

The parent of this entity is VideoDescription.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html

    .PARAMETER Mpeg2Settings
        Settings for video encoded with the MPEG-2 codec.

        Type: Mpeg2Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html#cfn-medialive-channel-videocodecsettings-mpeg2settings
        UpdateType: Mutable

    .PARAMETER FrameCaptureSettings
        The settings for the video codec in a frame capture output.

        Type: FrameCaptureSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html#cfn-medialive-channel-videocodecsettings-framecapturesettings
        UpdateType: Mutable

    .PARAMETER H264Settings
        The settings for the H.264 codec in the output.

        Type: H264Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html#cfn-medialive-channel-videocodecsettings-h264settings
        UpdateType: Mutable

    .PARAMETER H265Settings
        Settings for video encoded with the H265 codec.

        Type: H265Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videocodecsettings.html#cfn-medialive-channel-videocodecsettings-h265settings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.VideoCodecSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Mpeg2Settings,
        [parameter(Mandatory = $false)]
        $FrameCaptureSettings,
        [parameter(Mandatory = $false)]
        $H264Settings,
        [parameter(Mandatory = $false)]
        $H265Settings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.VideoCodecSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
