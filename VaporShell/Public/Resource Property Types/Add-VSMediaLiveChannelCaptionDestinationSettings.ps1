function Add-VSMediaLiveChannelCaptionDestinationSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.CaptionDestinationSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.CaptionDestinationSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html

    .PARAMETER AribDestinationSettings
        Type: AribDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-aribdestinationsettings
        UpdateType: Mutable

    .PARAMETER EbuTtDDestinationSettings
        Type: EbuTtDDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-ebuttddestinationsettings
        UpdateType: Mutable

    .PARAMETER SmpteTtDestinationSettings
        Type: SmpteTtDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-smptettdestinationsettings
        UpdateType: Mutable

    .PARAMETER EmbeddedPlusScte20DestinationSettings
        Type: EmbeddedPlusScte20DestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-embeddedplusscte20destinationsettings
        UpdateType: Mutable

    .PARAMETER TtmlDestinationSettings
        Type: TtmlDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-ttmldestinationsettings
        UpdateType: Mutable

    .PARAMETER Scte20PlusEmbeddedDestinationSettings
        Type: Scte20PlusEmbeddedDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-scte20plusembeddeddestinationsettings
        UpdateType: Mutable

    .PARAMETER DvbSubDestinationSettings
        Type: DvbSubDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-dvbsubdestinationsettings
        UpdateType: Mutable

    .PARAMETER TeletextDestinationSettings
        Type: TeletextDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-teletextdestinationsettings
        UpdateType: Mutable

    .PARAMETER BurnInDestinationSettings
        Type: BurnInDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-burnindestinationsettings
        UpdateType: Mutable

    .PARAMETER WebvttDestinationSettings
        Type: WebvttDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-webvttdestinationsettings
        UpdateType: Mutable

    .PARAMETER EmbeddedDestinationSettings
        Type: EmbeddedDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-embeddeddestinationsettings
        UpdateType: Mutable

    .PARAMETER RtmpCaptionInfoDestinationSettings
        Type: RtmpCaptionInfoDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captiondestinationsettings.html#cfn-medialive-channel-captiondestinationsettings-rtmpcaptioninfodestinationsettings
        UpdateType: Mutable

    .PARAMETER Scte27DestinationSettings
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
        [Parameter(Mandatory = $false)]
        $AribDestinationSettings,

        [Parameter(Mandatory = $false)]
        $EbuTtDDestinationSettings,

        [Parameter(Mandatory = $false)]
        $SmpteTtDestinationSettings,

        [Parameter(Mandatory = $false)]
        $EmbeddedPlusScte20DestinationSettings,

        [Parameter(Mandatory = $false)]
        $TtmlDestinationSettings,

        [Parameter(Mandatory = $false)]
        $Scte20PlusEmbeddedDestinationSettings,

        [Parameter(Mandatory = $false)]
        $DvbSubDestinationSettings,

        [Parameter(Mandatory = $false)]
        $TeletextDestinationSettings,

        [Parameter(Mandatory = $false)]
        $BurnInDestinationSettings,

        [Parameter(Mandatory = $false)]
        $WebvttDestinationSettings,

        [Parameter(Mandatory = $false)]
        $EmbeddedDestinationSettings,

        [Parameter(Mandatory = $false)]
        $RtmpCaptionInfoDestinationSettings,

        [Parameter(Mandatory = $false)]
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
