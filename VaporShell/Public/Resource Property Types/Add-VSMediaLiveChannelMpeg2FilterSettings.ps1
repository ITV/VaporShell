function Add-VSMediaLiveChannelMpeg2FilterSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.Mpeg2FilterSettings resource property to the template. Settings to configure video filters that apply to the MPEG-2 codec.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.Mpeg2FilterSettings resource property to the template.
Settings to configure video filters that apply to the MPEG-2 codec.

The parent of this entity is Mpeg2FilterSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mpeg2filtersettings.html

    .PARAMETER TemporalFilterSettings
        Settings for applying the temporal filter to the video.

        Type: TemporalFilterSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mpeg2filtersettings.html#cfn-medialive-channel-mpeg2filtersettings-temporalfiltersettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.Mpeg2FilterSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TemporalFilterSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.Mpeg2FilterSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
