function Add-VSMediaLiveChannelAvailSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.AvailSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.AvailSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html

    .PARAMETER Scte35SpliceInsert
        Type: Scte35SpliceInsert
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35spliceinsert
        UpdateType: Mutable

    .PARAMETER Scte35TimeSignalApos
        Type: Scte35TimeSignalApos
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35timesignalapos
        UpdateType: Mutable

    .PARAMETER Esam
        Type: Esam
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-esam
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.AvailSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Scte35SpliceInsert,

        [Parameter(Mandatory = $false)]
        $Scte35TimeSignalApos,

        [Parameter(Mandatory = $false)]
        $Esam

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.AvailSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
