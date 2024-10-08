function Add-VSMediaLiveChannelH264ColorSpaceSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.H264ColorSpaceSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.H264ColorSpaceSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html

    .PARAMETER Rec601Settings
        Type: Rec601Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec601settings
        UpdateType: Mutable

    .PARAMETER Rec709Settings
        Type: Rec709Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec709settings
        UpdateType: Mutable

    .PARAMETER ColorSpacePassthroughSettings
        Type: ColorSpacePassthroughSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-colorspacepassthroughsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.H264ColorSpaceSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Rec601Settings,

        [Parameter(Mandatory = $false)]
        $Rec709Settings,

        [Parameter(Mandatory = $false)]
        $ColorSpacePassthroughSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.H264ColorSpaceSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
