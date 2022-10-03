function Add-VSMediaLiveChannelScte27SourceSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.Scte27SourceSettings resource property to the template. Information about the SCTE-27 captions to extract from the input.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.Scte27SourceSettings resource property to the template.
Information about the SCTE-27 captions to extract from the input.

The parent of this entity is CaptionSelectorSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html

    .PARAMETER OcrLanguage
        If you will configure a WebVTT caption description that references this caption selector, use this field to provide the language to consider when translating the image-based source to text.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html#cfn-medialive-channel-scte27sourcesettings-ocrlanguage
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Pid
        The PID field is used in conjunction with the captions selector languageCode field as follows: Specify PID and Language: Extracts captions from that PID; the language is "informational." Specify PID and omit Language: Extracts the specified PID. Omit PID and specify Language: Extracts the specified language, whichever PID that happens to be. Omit PID and omit Language: Valid only if source is DVB-Sub that is being passed through; all languages are passed through.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html#cfn-medialive-channel-scte27sourcesettings-pid
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.Scte27SourceSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $OcrLanguage,
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
        $Pid
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.Scte27SourceSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
