function Add-VSIVSRecordingConfigurationThumbnailConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IVS::RecordingConfiguration.ThumbnailConfiguration resource property to the template. The ThumbnailConfiguration property type describes a configuration of thumbnails for recorded video.

    .DESCRIPTION
        Adds an AWS::IVS::RecordingConfiguration.ThumbnailConfiguration resource property to the template.
The ThumbnailConfiguration property type describes a configuration of thumbnails for recorded video.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html

    .PARAMETER RecordingMode
        Thumbnail recording mode. Valid values:
+  DISABLED: Use DISABLED to disable the generation of thumbnails for recorded video.
+  INTERVAL: Use INTERVAL to enable the generation of thumbnails for recorded video at a time interval controlled by the TargetIntervalSeconds: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-targetintervalseconds property.
*Default*: INTERVAL

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-recordingmode
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER TargetIntervalSeconds
        The targeted thumbnail-generation interval in seconds. This is configurable and required only if RecordingMode: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-recordingmode is INTERVAL.
Setting a value for TargetIntervalSeconds does not guarantee that thumbnails are generated at the specified interval. For thumbnails to be generated at the TargetIntervalSeconds interval, the IDR/Keyframe value for the input video must be less than the TargetIntervalSeconds value. See Amazon IVS Streaming Configuration: https://docs.aws.amazon.com/ivs/latest/userguide/streaming-config.html for information on setting IDR/Keyframe to the recommended value in video-encoder settings.
*Default*: 60
*Valid Range*: Minumum value of 5. Maximum value of 60.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-targetintervalseconds
        UpdateType: Immutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IVS.RecordingConfiguration.ThumbnailConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RecordingMode,
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
        $TargetIntervalSeconds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IVS.RecordingConfiguration.ThumbnailConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
