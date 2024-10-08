function Add-VSMediaLiveChannelCaptionSelectorSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html

    .PARAMETER DvbSubSourceSettings
        Type: DvbSubSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-dvbsubsourcesettings
        UpdateType: Mutable

    .PARAMETER Scte27SourceSettings
        Type: Scte27SourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte27sourcesettings
        UpdateType: Mutable

    .PARAMETER AribSourceSettings
        Type: AribSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-aribsourcesettings
        UpdateType: Mutable

    .PARAMETER EmbeddedSourceSettings
        Type: EmbeddedSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-embeddedsourcesettings
        UpdateType: Mutable

    .PARAMETER Scte20SourceSettings
        Type: Scte20SourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte20sourcesettings
        UpdateType: Mutable

    .PARAMETER TeletextSourceSettings
        Type: TeletextSourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-teletextsourcesettings
        UpdateType: Mutable

    .PARAMETER AncillarySourceSettings
        Type: AncillarySourceSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-ancillarysourcesettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.CaptionSelectorSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DvbSubSourceSettings,

        [Parameter(Mandatory = $false)]
        $Scte27SourceSettings,

        [Parameter(Mandatory = $false)]
        $AribSourceSettings,

        [Parameter(Mandatory = $false)]
        $EmbeddedSourceSettings,

        [Parameter(Mandatory = $false)]
        $Scte20SourceSettings,

        [Parameter(Mandatory = $false)]
        $TeletextSourceSettings,

        [Parameter(Mandatory = $false)]
        $AncillarySourceSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.CaptionSelectorSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
