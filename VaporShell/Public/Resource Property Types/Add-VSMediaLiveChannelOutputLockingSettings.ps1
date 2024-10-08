function Add-VSMediaLiveChannelOutputLockingSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.OutputLockingSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.OutputLockingSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputlockingsettings.html

    .PARAMETER PipelineLockingSettings
        Type: PipelineLockingSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputlockingsettings.html#cfn-medialive-channel-outputlockingsettings-pipelinelockingsettings
        UpdateType: Mutable

    .PARAMETER EpochLockingSettings
        Type: EpochLockingSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputlockingsettings.html#cfn-medialive-channel-outputlockingsettings-epochlockingsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.OutputLockingSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PipelineLockingSettings,

        [Parameter(Mandatory = $false)]
        $EpochLockingSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.OutputLockingSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
