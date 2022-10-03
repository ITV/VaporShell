function Add-VSMediaPackageOriginEndpointHlsPackage {
    <#
    .SYNOPSIS
        Adds an AWS::MediaPackage::OriginEndpoint.HlsPackage resource property to the template. Parameters for Apple HLS packaging.

    .DESCRIPTION
        Adds an AWS::MediaPackage::OriginEndpoint.HlsPackage resource property to the template.
Parameters for Apple HLS packaging.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html

    .PARAMETER SegmentDurationSeconds
        Duration in seconds of each fragment. Actual fragments are rounded to the nearest multiple of the source fragment duration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-segmentdurationseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER PlaylistWindowSeconds
        Time window in seconds contained in each parent manifest.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-playlistwindowseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER PlaylistType
        When specified as either event or vod, a corresponding EXT-X-PLAYLIST-TYPE entry is included in the media playlist. Indicates if the playlist is live-to-VOD content.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-playlisttype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AdMarkers
        Controls how ad markers are included in the packaged endpoint. Valid values are none, passthrough, or scte35_enhanced.
+  **NONE** - omits all SCTE-35 ad markers from the output.
+  **PASSTHROUGH** - creates a copy in the output of the SCTE-35 ad markers comments taken directly from the input manifest.
+  **SCTE35_ENHANCED** - generates ad markers and blackout tags in the output based on the SCTE-35 messages from the input manifest.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-admarkers
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AdTriggers
        Specifies the SCTE-35 message types that MediaPackage treats as ad markers in the output manifest.
Valid values:
+  **BREAK**
+  **DISTRIBUTOR_ADVERTISEMENT**
+  **DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY**
+  **DISTRIBUTOR_PLACEMENT_OPPORTUNITY**
+  **PROVIDER_ADVERTISEMENT**
+  **PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY**
+  **PROVIDER_PLACEMENT_OPPORTUNITY**
+  **SPLICE_INSERT**

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-adtriggers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER AdsOnDeliveryRestrictions
        The flags on SCTE-35 segmentation descriptors that have to be present for MediaPackage to insert ad markers in the output manifest. For information about SCTE-35 in MediaPackage, see SCTE-35 Message Options in AWS Elemental MediaPackage: https://docs.aws.amazon.com/mediapackage/latest/ug/scte.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-adsondeliveryrestrictions
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ProgramDateTimeIntervalSeconds
        Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the interval that you specify. Additionally, ID3Timed metadata messages are generated every 5 seconds starting when the content was ingested.
Irrespective of this parameter, if any ID3Timed metadata is in the HLS input, it is passed through to the HLS output.
Omit this attribute or enter 0 to indicate that the EXT-X-PROGRAM-DATE-TIME tags are not included in the manifest.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-programdatetimeintervalseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER IncludeIframeOnlyStream
        Only applies to stream sets with a single video track. When true, the stream set includes an additional I-frame only stream, along with the other tracks. If false, this extra stream is not included.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-includeiframeonlystream
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER UseAudioRenditionGroup
        When true, AWS Elemental MediaPackage bundles all audio tracks in a rendition group. All other tracks in the stream can be used with any audio rendition from the group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-useaudiorenditiongroup
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER Encryption
        Parameters for encrypting content.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-encryption
        UpdateType: Mutable
        Type: HlsEncryption

    .PARAMETER StreamSelection
        Limitations for outputs from the endpoint, based on the video bitrate.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlspackage.html#cfn-mediapackage-originendpoint-hlspackage-streamselection
        UpdateType: Mutable
        Type: StreamSelection

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaPackage.OriginEndpoint.HlsPackage')]
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
        $SegmentDurationSeconds,
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
        $PlaylistWindowSeconds,
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
        $PlaylistType,
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
        $AdMarkers,
        [parameter(Mandatory = $false)]
        $AdTriggers,
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
        $AdsOnDeliveryRestrictions,
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
        $ProgramDateTimeIntervalSeconds,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IncludeIframeOnlyStream,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UseAudioRenditionGroup,
        [parameter(Mandatory = $false)]
        $Encryption,
        [parameter(Mandatory = $false)]
        $StreamSelection
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaPackage.OriginEndpoint.HlsPackage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
