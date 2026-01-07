function Add-VSMediaLiveChannelLinkedChannelSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.LinkedChannelSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.LinkedChannelSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-linkedchannelsettings.html

    .PARAMETER FollowerChannelSettings
        Type: FollowerChannelSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-linkedchannelsettings.html#cfn-medialive-channel-linkedchannelsettings-followerchannelsettings
        UpdateType: Mutable

    .PARAMETER PrimaryChannelSettings
        Type: PrimaryChannelSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-linkedchannelsettings.html#cfn-medialive-channel-linkedchannelsettings-primarychannelsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.LinkedChannelSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FollowerChannelSettings,

        [Parameter(Mandatory = $false)]
        $PrimaryChannelSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.LinkedChannelSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
