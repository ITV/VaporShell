function Add-VSMediaLiveChannelArchiveCdnSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.ArchiveCdnSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.ArchiveCdnSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecdnsettings.html

    .PARAMETER ArchiveS3Settings
        Type: ArchiveS3Settings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecdnsettings.html#cfn-medialive-channel-archivecdnsettings-archives3settings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.ArchiveCdnSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ArchiveS3Settings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.ArchiveCdnSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
