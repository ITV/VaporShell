function Add-VSMediaLiveChannelOutputGroupSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.OutputGroupSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.OutputGroupSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html

    .PARAMETER HlsGroupSettings
        Type: HlsGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-hlsgroupsettings
        UpdateType: Mutable

    .PARAMETER FrameCaptureGroupSettings
        Type: FrameCaptureGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-framecapturegroupsettings
        UpdateType: Mutable

    .PARAMETER MultiplexGroupSettings
        Type: MultiplexGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-multiplexgroupsettings
        UpdateType: Mutable

    .PARAMETER ArchiveGroupSettings
        Type: ArchiveGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-archivegroupsettings
        UpdateType: Mutable

    .PARAMETER MediaPackageGroupSettings
        Type: MediaPackageGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mediapackagegroupsettings
        UpdateType: Mutable

    .PARAMETER UdpGroupSettings
        Type: UdpGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-udpgroupsettings
        UpdateType: Mutable

    .PARAMETER MsSmoothGroupSettings
        Type: MsSmoothGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mssmoothgroupsettings
        UpdateType: Mutable

    .PARAMETER RtmpGroupSettings
        Type: RtmpGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-rtmpgroupsettings
        UpdateType: Mutable

    .PARAMETER CmafIngestGroupSettings
        Type: CmafIngestGroupSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-cmafingestgroupsettings
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
        $RtmpGroupSettings,
        [parameter(Mandatory = $false)]
        $CmafIngestGroupSettings
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
