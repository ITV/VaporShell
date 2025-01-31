function Add-VSMediaLiveChannelAudioSelectorSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.AudioSelectorSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.AudioSelectorSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html

    .PARAMETER AudioPidSelection
        Type: AudioPidSelection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiopidselection
        UpdateType: Mutable

    .PARAMETER AudioLanguageSelection
        Type: AudioLanguageSelection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiolanguageselection
        UpdateType: Mutable

    .PARAMETER AudioTrackSelection
        Type: AudioTrackSelection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiotrackselection
        UpdateType: Mutable

    .PARAMETER AudioHlsRenditionSelection
        Type: AudioHlsRenditionSelection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiohlsrenditionselection
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.AudioSelectorSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AudioPidSelection,

        [Parameter(Mandatory = $false)]
        $AudioLanguageSelection,

        [Parameter(Mandatory = $false)]
        $AudioTrackSelection,

        [Parameter(Mandatory = $false)]
        $AudioHlsRenditionSelection

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.AudioSelectorSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
