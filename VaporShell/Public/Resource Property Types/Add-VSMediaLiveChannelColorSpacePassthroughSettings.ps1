function Add-VSMediaLiveChannelColorSpacePassthroughSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.ColorSpacePassthroughSettings resource property to the template. Passthrough applies no color space conversion to the output.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.ColorSpacePassthroughSettings resource property to the template.
Passthrough applies no color space conversion to the output.

The parents of this entity are H264ColorSpaceSettings and H265ColorSpaceSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-colorspacepassthroughsettings.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.ColorSpacePassthroughSettings')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.ColorSpacePassthroughSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
