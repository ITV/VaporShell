function Add-VSMediaLiveChannelVideoBlackFailoverSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.VideoBlackFailoverSettings resource property to the template. MediaLive will perform a failover if content is considered black for the specified period.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.VideoBlackFailoverSettings resource property to the template.
MediaLive will perform a failover if content is considered black for the specified period.

The parent of this entity is FailoverConditionSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoblackfailoversettings.html

    .PARAMETER VideoBlackThresholdMsec
        The amount of time in milliseconds that the active input must be black before automatic input failover occurs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoblackfailoversettings.html#cfn-medialive-channel-videoblackfailoversettings-videoblackthresholdmsec
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER BlackDetectThreshold
        A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage expressed as a decimal of white. Therefore .1 means 10% white or 90% black. Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: 1023*0.1=102.3, which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: 255*0.1=25.5, which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoblackfailoversettings.html#cfn-medialive-channel-videoblackfailoversettings-blackdetectthreshold
        PrimitiveType: Double
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.VideoBlackFailoverSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VideoBlackThresholdMsec,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BlackDetectThreshold
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.VideoBlackFailoverSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
