function Add-VSMediaLiveChannelH265ColorSpaceSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.H265ColorSpaceSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.H265ColorSpaceSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html

    .PARAMETER Rec601Settings
        Type: Rec601Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-rec601settings
        UpdateType: Mutable

    .PARAMETER Rec709Settings
        Type: Rec709Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-rec709settings
        UpdateType: Mutable

    .PARAMETER ColorSpacePassthroughSettings
        Type: ColorSpacePassthroughSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-colorspacepassthroughsettings
        UpdateType: Mutable

    .PARAMETER DolbyVision81Settings
        Type: DolbyVision81Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-dolbyvision81settings
        UpdateType: Mutable

    .PARAMETER Hdr10Settings
        Type: Hdr10Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-hdr10settings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.H265ColorSpaceSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Rec601Settings,
        [parameter(Mandatory = $false)]
        $Rec709Settings,
        [parameter(Mandatory = $false)]
        $ColorSpacePassthroughSettings,
        [parameter(Mandatory = $false)]
        $DolbyVision81Settings,
        [parameter(Mandatory = $false)]
        $Hdr10Settings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.H265ColorSpaceSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
