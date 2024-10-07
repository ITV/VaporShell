function Add-VSMediaLiveChannelAudioCodecSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.AudioCodecSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.AudioCodecSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html

    .PARAMETER Eac3Settings
        Type: Eac3Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-eac3settings
        UpdateType: Mutable

    .PARAMETER Ac3Settings
        Type: Ac3Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-ac3settings
        UpdateType: Mutable

    .PARAMETER Mp2Settings
        Type: Mp2Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-mp2settings
        UpdateType: Mutable

    .PARAMETER Eac3AtmosSettings
        Type: Eac3AtmosSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-eac3atmossettings
        UpdateType: Mutable

    .PARAMETER PassThroughSettings
        Type: PassThroughSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-passthroughsettings
        UpdateType: Mutable

    .PARAMETER WavSettings
        Type: WavSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-wavsettings
        UpdateType: Mutable

    .PARAMETER AacSettings
        Type: AacSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiocodecsettings.html#cfn-medialive-channel-audiocodecsettings-aacsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.AudioCodecSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Eac3Settings,
        [parameter(Mandatory = $false)]
        $Ac3Settings,
        [parameter(Mandatory = $false)]
        $Mp2Settings,
        [parameter(Mandatory = $false)]
        $Eac3AtmosSettings,
        [parameter(Mandatory = $false)]
        $PassThroughSettings,
        [parameter(Mandatory = $false)]
        $WavSettings,
        [parameter(Mandatory = $false)]
        $AacSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.AudioCodecSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
