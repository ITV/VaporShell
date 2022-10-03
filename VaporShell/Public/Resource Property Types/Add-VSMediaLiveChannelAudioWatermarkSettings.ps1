function Add-VSMediaLiveChannelAudioWatermarkSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.AudioWatermarkSettings resource property to the template. Audio Watermark Settings

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.AudioWatermarkSettings resource property to the template.
Audio Watermark Settings

The parent of this entity is AudioDescription.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiowatermarksettings.html

    .PARAMETER NielsenWatermarksSettings
        Settings to configure Nielsen Watermarks in the audio encode

        Type: NielsenWatermarksSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiowatermarksettings.html#cfn-medialive-channel-audiowatermarksettings-nielsenwatermarkssettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.AudioWatermarkSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NielsenWatermarksSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.AudioWatermarkSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
