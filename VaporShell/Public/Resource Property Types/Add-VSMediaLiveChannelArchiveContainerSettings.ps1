function Add-VSMediaLiveChannelArchiveContainerSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.ArchiveContainerSettings resource property to the template. The archive container settings.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.ArchiveContainerSettings resource property to the template.
The archive container settings.

The parent of this entity is ArchiveOutputSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecontainersettings.html

    .PARAMETER RawSettings
        The settings for Raw archive output type.

        Type: RawSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecontainersettings.html#cfn-medialive-channel-archivecontainersettings-rawsettings
        UpdateType: Mutable

    .PARAMETER M2tsSettings
        The settings for the M2TS in the archive output.

        Type: M2tsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecontainersettings.html#cfn-medialive-channel-archivecontainersettings-m2tssettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.ArchiveContainerSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RawSettings,
        [parameter(Mandatory = $false)]
        $M2tsSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.ArchiveContainerSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
