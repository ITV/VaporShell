function Add-VSMediaLiveChannelOutputSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.OutputSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.OutputSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html

    .PARAMETER MediaPackageOutputSettings
        Type: MediaPackageOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-mediapackageoutputsettings
        UpdateType: Mutable

    .PARAMETER MsSmoothOutputSettings
        Type: MsSmoothOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-mssmoothoutputsettings
        UpdateType: Mutable

    .PARAMETER FrameCaptureOutputSettings
        Type: FrameCaptureOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-framecaptureoutputsettings
        UpdateType: Mutable

    .PARAMETER HlsOutputSettings
        Type: HlsOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-hlsoutputsettings
        UpdateType: Mutable

    .PARAMETER RtmpOutputSettings
        Type: RtmpOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-rtmpoutputsettings
        UpdateType: Mutable

    .PARAMETER UdpOutputSettings
        Type: UdpOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-udpoutputsettings
        UpdateType: Mutable

    .PARAMETER MultiplexOutputSettings
        Type: MultiplexOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-multiplexoutputsettings
        UpdateType: Mutable

    .PARAMETER CmafIngestOutputSettings
        Type: CmafIngestOutputSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputsettings.html#cfn-medialive-channel-outputsettings-cmafingestoutputsettings
        UpdateType: Mutable

    .PARAMETER ArchiveOutputSettings
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
        [Parameter(Mandatory = $false)]
        $MediaPackageOutputSettings,

        [Parameter(Mandatory = $false)]
        $MsSmoothOutputSettings,

        [Parameter(Mandatory = $false)]
        $FrameCaptureOutputSettings,

        [Parameter(Mandatory = $false)]
        $HlsOutputSettings,

        [Parameter(Mandatory = $false)]
        $RtmpOutputSettings,

        [Parameter(Mandatory = $false)]
        $UdpOutputSettings,

        [Parameter(Mandatory = $false)]
        $MultiplexOutputSettings,

        [Parameter(Mandatory = $false)]
        $CmafIngestOutputSettings,

        [Parameter(Mandatory = $false)]
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
