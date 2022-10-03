function Add-VSMediaLiveChannelAvailSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.AvailSettings resource property to the template. The settings for the ad avail setup in the output.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.AvailSettings resource property to the template.
The settings for the ad avail setup in the output.

The parent of this entity is AvailConfiguration.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html

    .PARAMETER Scte35SpliceInsert
        The setup for SCTE-35 splice insert handling.

        Type: Scte35SpliceInsert
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35spliceinsert
        UpdateType: Mutable

    .PARAMETER Scte35TimeSignalApos
        The setup for SCTE-35 time signal APOS handling.

        Type: Scte35TimeSignalApos
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35timesignalapos
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.AvailSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Scte35SpliceInsert,
        [parameter(Mandatory = $false)]
        $Scte35TimeSignalApos
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
