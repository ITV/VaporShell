function Add-VSMediaLiveChannelHlsSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.HlsSettings resource property to the template. The settings for an HLS output.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.HlsSettings resource property to the template.
The settings for an HLS output.

The parent of this entity is HlsOutputSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html

    .PARAMETER StandardHlsSettings
        The settings for a standard output an output that is not audio-only.

        Type: StandardHlsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-standardhlssettings
        UpdateType: Mutable

    .PARAMETER AudioOnlyHlsSettings
        The settings for an audio-only output.

        Type: AudioOnlyHlsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-audioonlyhlssettings
        UpdateType: Mutable

    .PARAMETER Fmp4HlsSettings
        The settings for an fMP4 container.

        Type: Fmp4HlsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-fmp4hlssettings
        UpdateType: Mutable

    .PARAMETER FrameCaptureHlsSettings
        Settings for a frame capture output in an HLS output group.

        Type: FrameCaptureHlsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-framecapturehlssettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.HlsSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StandardHlsSettings,
        [parameter(Mandatory = $false)]
        $AudioOnlyHlsSettings,
        [parameter(Mandatory = $false)]
        $Fmp4HlsSettings,
        [parameter(Mandatory = $false)]
        $FrameCaptureHlsSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.HlsSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
