function Add-VSMediaLiveChannelRtmpCaptionInfoDestinationSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.RtmpCaptionInfoDestinationSettings resource property to the template. The settings for RTMPCaptionInfo captions encode in the output.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.RtmpCaptionInfoDestinationSettings resource property to the template.
The settings for RTMPCaptionInfo captions encode in the output.

The parent of this entity is CaptionDestinationSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpcaptioninfodestinationsettings.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.RtmpCaptionInfoDestinationSettings')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.RtmpCaptionInfoDestinationSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
