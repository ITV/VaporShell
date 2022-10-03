function Add-VSMediaLiveChannelOutputSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.OutputSettings resource property to the template. The output settings.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.OutputSettings resource property to the template.
The output settings.

The parent of this entity is Output.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html

    .PARAMETER MediaPackageOutputSettings
        The settings for a MediaPackage output.
The parent of this entity is OutputGroupSettings.

        Type: MediaPackageOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-mediapackageoutputsettings
        UpdateType: Mutable

    .PARAMETER MsSmoothOutputSettings
        The settings for a Microsoft Smooth output.

        Type: MsSmoothOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-mssmoothoutputsettings
        UpdateType: Mutable

    .PARAMETER FrameCaptureOutputSettings
        The settings for a frame capture output.
The parent of this entity is OutputGroupSettings.

        Type: FrameCaptureOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-framecaptureoutputsettings
        UpdateType: Mutable

    .PARAMETER HlsOutputSettings
        The settings for an HLS output.
The parent of this entity is OutputGroupSettings.

        Type: HlsOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-hlsoutputsettings
        UpdateType: Mutable

    .PARAMETER RtmpOutputSettings
        The settings for an RTMP output.
The parent of this entity is OutputGroupSettings.

        Type: RtmpOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-rtmpoutputsettings
        UpdateType: Mutable

    .PARAMETER UdpOutputSettings
        The settings for a UDP output.
The parent of this entity is OutputGroupSettings.

        Type: UdpOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-udpoutputsettings
        UpdateType: Mutable

    .PARAMETER MultiplexOutputSettings
        Configuration of a Multiplex output.

        Type: MultiplexOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-multiplexoutputsettings
        UpdateType: Mutable

    .PARAMETER ArchiveOutputSettings
        The settings for an archive output.

        Type: ArchiveOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-archiveoutputsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.OutputSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MediaPackageOutputSettings,
        [parameter(Mandatory = $false)]
        $MsSmoothOutputSettings,
        [parameter(Mandatory = $false)]
        $FrameCaptureOutputSettings,
        [parameter(Mandatory = $false)]
        $HlsOutputSettings,
        [parameter(Mandatory = $false)]
        $RtmpOutputSettings,
        [parameter(Mandatory = $false)]
        $UdpOutputSettings,
        [parameter(Mandatory = $false)]
        $MultiplexOutputSettings,
        [parameter(Mandatory = $false)]
        $ArchiveOutputSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.OutputSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
