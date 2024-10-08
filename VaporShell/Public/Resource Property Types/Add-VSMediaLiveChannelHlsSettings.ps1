function Add-VSMediaLiveChannelHlsSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.HlsSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.HlsSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html

    .PARAMETER StandardHlsSettings
        Type: StandardHlsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-standardhlssettings
        UpdateType: Mutable

    .PARAMETER AudioOnlyHlsSettings
        Type: AudioOnlyHlsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-audioonlyhlssettings
        UpdateType: Mutable

    .PARAMETER Fmp4HlsSettings
        Type: Fmp4HlsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlssettings.html#cfn-medialive-channel-hlssettings-fmp4hlssettings
        UpdateType: Mutable

    .PARAMETER FrameCaptureHlsSettings
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
        [Parameter(Mandatory = $false)]
        $StandardHlsSettings,

        [Parameter(Mandatory = $false)]
        $AudioOnlyHlsSettings,

        [Parameter(Mandatory = $false)]
        $Fmp4HlsSettings,

        [Parameter(Mandatory = $false)]
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
