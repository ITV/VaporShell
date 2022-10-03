function Add-VSMediaLiveChannelFrameCaptureGroupSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.FrameCaptureGroupSettings resource property to the template. The settings for a frame capture output group.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.FrameCaptureGroupSettings resource property to the template.
The settings for a frame capture output group.

The parent of this entity is OutputGroupSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturegroupsettings.html

    .PARAMETER FrameCaptureCdnSettings
        Settings to configure the destination of a Frame Capture output.

        Type: FrameCaptureCdnSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturegroupsettings.html#cfn-medialive-channel-framecapturegroupsettings-framecapturecdnsettings
        UpdateType: Mutable

    .PARAMETER Destination
        The destination for the frame capture files. The destination is either the URI for an Amazon S3 bucket and object, plus a file name prefix for example, s3ssl://sportsDelivery/highlights/20180820/curling_ or the URI for a MediaStore container, plus a file name prefix for example, mediastoressl://sportsDelivery/20180820/curling_. The final file names consist of the prefix from the destination field for example, "curling_" + name modifier + the counter 5 digits, starting from 00001 + extension which is always .jpg. For example, curlingLow.00001.jpg.

        Type: OutputLocationRef
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-framecapturegroupsettings.html#cfn-medialive-channel-framecapturegroupsettings-destination
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.FrameCaptureGroupSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FrameCaptureCdnSettings,
        [parameter(Mandatory = $false)]
        $Destination
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.FrameCaptureGroupSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
