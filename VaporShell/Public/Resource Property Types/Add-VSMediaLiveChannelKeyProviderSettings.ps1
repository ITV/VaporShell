function Add-VSMediaLiveChannelKeyProviderSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.KeyProviderSettings resource property to the template. The configuration of key provider settings.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.KeyProviderSettings resource property to the template.
The configuration of key provider settings.

The parent of this entity is HlsGroupSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-keyprovidersettings.html

    .PARAMETER StaticKeySettings
        The configuration of static key settings.

        Type: StaticKeySettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-keyprovidersettings.html#cfn-medialive-channel-keyprovidersettings-statickeysettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.KeyProviderSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StaticKeySettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.KeyProviderSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
