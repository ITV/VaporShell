function Add-VSMediaLiveChannelHlsCdnSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.HlsCdnSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.HlsCdnSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html

    .PARAMETER HlsWebdavSettings
        Type: HlsWebdavSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlswebdavsettings
        UpdateType: Mutable

    .PARAMETER HlsS3Settings
        Type: HlsS3Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlss3settings
        UpdateType: Mutable

    .PARAMETER HlsAkamaiSettings
        Type: HlsAkamaiSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlsakamaisettings
        UpdateType: Mutable

    .PARAMETER HlsBasicPutSettings
        Type: HlsBasicPutSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlsbasicputsettings
        UpdateType: Mutable

    .PARAMETER HlsMediaStoreSettings
        Type: HlsMediaStoreSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlscdnsettings.html#cfn-medialive-channel-hlscdnsettings-hlsmediastoresettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.HlsCdnSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HlsWebdavSettings,
        [parameter(Mandatory = $false)]
        $HlsS3Settings,
        [parameter(Mandatory = $false)]
        $HlsAkamaiSettings,
        [parameter(Mandatory = $false)]
        $HlsBasicPutSettings,
        [parameter(Mandatory = $false)]
        $HlsMediaStoreSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.HlsCdnSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
