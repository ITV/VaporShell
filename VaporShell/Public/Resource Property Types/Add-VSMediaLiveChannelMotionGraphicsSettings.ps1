function Add-VSMediaLiveChannelMotionGraphicsSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.MotionGraphicsSettings resource property to the template. Settings to enable and configure the motion graphics overlay feature in the channel.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.MotionGraphicsSettings resource property to the template.
Settings to enable and configure the motion graphics overlay feature in the channel.

The parent of this entity is MotionGraphicsConfiguration.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-motiongraphicssettings.html

    .PARAMETER HtmlMotionGraphicsSettings
        Settings to configure the motion graphics overlay to use an HTML asset.

        Type: HtmlMotionGraphicsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-motiongraphicssettings.html#cfn-medialive-channel-motiongraphicssettings-htmlmotiongraphicssettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.MotionGraphicsSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HtmlMotionGraphicsSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.MotionGraphicsSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
