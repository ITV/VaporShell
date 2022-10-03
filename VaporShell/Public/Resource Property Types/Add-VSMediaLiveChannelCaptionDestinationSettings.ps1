function Add-VSMediaLiveChannelCaptionDestinationSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.CaptionDestinationSettings resource property to the template. The configuration of one captions encode in the output.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.CaptionDestinationSettings resource property to the template.
The configuration of one captions encode in the output.

The parent of this entity is CaptionDescription.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html

    .PARAMETER AribDestinationSettings
        The configuration of one ARIB captions encode in the output.

        Type: AribDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-aribdestinationsettings
        UpdateType: Mutable

    .PARAMETER EbuTtDDestinationSettings
        Settings for EBU-TT captions in the output.

        Type: EbuTtDDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-ebuttddestinationsettings
        UpdateType: Mutable

    .PARAMETER SmpteTtDestinationSettings
        The configuration of one SMPTE-TT captions encode in the output.

        Type: SmpteTtDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-smptettdestinationsettings
        UpdateType: Mutable

    .PARAMETER EmbeddedPlusScte20DestinationSettings
        The configuration of one embedded plus SCTE-20 captions encode in the output.

        Type: EmbeddedPlusScte20DestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-embeddedplusscte20destinationsettings
        UpdateType: Mutable

    .PARAMETER TtmlDestinationSettings
        The configuration of one TTML captions encode in the output.

        Type: TtmlDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-ttmldestinationsettings
        UpdateType: Mutable

    .PARAMETER Scte20PlusEmbeddedDestinationSettings
        The configuration of one SCTE20 plus embedded captions encode in the output.

        Type: Scte20PlusEmbeddedDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-scte20plusembeddeddestinationsettings
        UpdateType: Mutable

    .PARAMETER DvbSubDestinationSettings
        The configuration of one DVB Sub captions encode in the output.

        Type: DvbSubDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-dvbsubdestinationsettings
        UpdateType: Mutable

    .PARAMETER TeletextDestinationSettings
        The configuration of one Teletext captions encode in the output.

        Type: TeletextDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-teletextdestinationsettings
        UpdateType: Mutable

    .PARAMETER BurnInDestinationSettings
        The configuration of one burn-in captions encode in the output.

        Type: BurnInDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-burnindestinationsettings
        UpdateType: Mutable

    .PARAMETER WebvttDestinationSettings
        The configuration of one WebVTT captions encode in the output.

        Type: WebvttDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-webvttdestinationsettings
        UpdateType: Mutable

    .PARAMETER EmbeddedDestinationSettings
        The configuration of one embedded captions encode in the output.

        Type: EmbeddedDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-embeddeddestinationsettings
        UpdateType: Mutable

    .PARAMETER RtmpCaptionInfoDestinationSettings
        The configuration of one RTMPCaptionInfo captions encode in the output.

        Type: RtmpCaptionInfoDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-rtmpcaptioninfodestinationsettings
        UpdateType: Mutable

    .PARAMETER Scte27DestinationSettings
        The configuration of one SCTE-27 captions encode in the output.

        Type: Scte27DestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-scte27destinationsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.CaptionDestinationSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AribDestinationSettings,
        [parameter(Mandatory = $false)]
        $EbuTtDDestinationSettings,
        [parameter(Mandatory = $false)]
        $SmpteTtDestinationSettings,
        [parameter(Mandatory = $false)]
        $EmbeddedPlusScte20DestinationSettings,
        [parameter(Mandatory = $false)]
        $TtmlDestinationSettings,
        [parameter(Mandatory = $false)]
        $Scte20PlusEmbeddedDestinationSettings,
        [parameter(Mandatory = $false)]
        $DvbSubDestinationSettings,
        [parameter(Mandatory = $false)]
        $TeletextDestinationSettings,
        [parameter(Mandatory = $false)]
        $BurnInDestinationSettings,
        [parameter(Mandatory = $false)]
        $WebvttDestinationSettings,
        [parameter(Mandatory = $false)]
        $EmbeddedDestinationSettings,
        [parameter(Mandatory = $false)]
        $RtmpCaptionInfoDestinationSettings,
        [parameter(Mandatory = $false)]
        $Scte27DestinationSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.CaptionDestinationSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
