function Add-VSMediaLiveChannelOutputGroupSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.OutputGroupSettings resource property to the template. The configuration of the output group.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.OutputGroupSettings resource property to the template.
The configuration of the output group.

The parent of this entity is OutputGroup.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html

    .PARAMETER HlsGroupSettings
        The configuration of an HLS output group.

        Type: HlsGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-hlsgroupsettings
        UpdateType: Mutable

    .PARAMETER FrameCaptureGroupSettings
        The configuration of a frame capture output group.

        Type: FrameCaptureGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-framecapturegroupsettings
        UpdateType: Mutable

    .PARAMETER MultiplexGroupSettings
        The settings for a Multiplex output group.

        Type: MultiplexGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-multiplexgroupsettings
        UpdateType: Mutable

    .PARAMETER ArchiveGroupSettings
        The configuration of an archive output group.
The parent of this entity is OutputGroupSettings.

        Type: ArchiveGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-archivegroupsettings
        UpdateType: Mutable

    .PARAMETER MediaPackageGroupSettings
        The configuration of a MediaPackage output group.

        Type: MediaPackageGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mediapackagegroupsettings
        UpdateType: Mutable

    .PARAMETER UdpGroupSettings
        The configuration of a UDP output group.

        Type: UdpGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-udpgroupsettings
        UpdateType: Mutable

    .PARAMETER MsSmoothGroupSettings
        The configuration of a Microsoft Smooth output group.

        Type: MsSmoothGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mssmoothgroupsettings
        UpdateType: Mutable

    .PARAMETER RtmpGroupSettings
        The configuration of an RTMP output group.

        Type: RtmpGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-rtmpgroupsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.OutputGroupSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HlsGroupSettings,
        [parameter(Mandatory = $false)]
        $FrameCaptureGroupSettings,
        [parameter(Mandatory = $false)]
        $MultiplexGroupSettings,
        [parameter(Mandatory = $false)]
        $ArchiveGroupSettings,
        [parameter(Mandatory = $false)]
        $MediaPackageGroupSettings,
        [parameter(Mandatory = $false)]
        $UdpGroupSettings,
        [parameter(Mandatory = $false)]
        $MsSmoothGroupSettings,
        [parameter(Mandatory = $false)]
        $RtmpGroupSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.OutputGroupSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
