function Add-VSMediaLiveChannelH264FilterSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.H264FilterSettings resource property to the template. Settings to configure video filters that apply to the H264 codec.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.H264FilterSettings resource property to the template.
Settings to configure video filters that apply to the H264 codec.

The parent of this entity is H264Settings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264filtersettings.html

    .PARAMETER TemporalFilterSettings
        Settings for applying the temporal filter to the video.

        Type: TemporalFilterSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264filtersettings.html#cfn-medialive-channel-h264filtersettings-temporalfiltersettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.H264FilterSettings')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.H264FilterSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
