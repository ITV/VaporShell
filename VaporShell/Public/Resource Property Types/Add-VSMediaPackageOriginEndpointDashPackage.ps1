function Add-VSMediaPackageOriginEndpointDashPackage {
    <#
    .SYNOPSIS
        Adds an AWS::MediaPackage::OriginEndpoint.DashPackage resource property to the template. Parameters for DASH packaging.

    .DESCRIPTION
        Adds an AWS::MediaPackage::OriginEndpoint.DashPackage resource property to the template.
Parameters for DASH packaging.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html

    .PARAMETER SegmentDurationSeconds
        Duration in seconds of each fragment. Actual fragments are rounded to the nearest multiple of the source fragment duration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-segmentdurationseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER ManifestWindowSeconds
        Time window in seconds contained in each manifest.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-manifestwindowseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Profile
        DASH profile for the output, such as HbbTV.
Valid values:
+  **NONE** - the output doesn't use a DASH profile.
+  **HBBTV_1_5** - the output is HbbTV-compliant.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-profile
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MinUpdatePeriodSeconds
        Minimum amount of time in seconds that the player should wait before requesting updates to the manifest.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-minupdateperiodseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MinBufferTimeSeconds
        Minimum amount of content measured in seconds that a player must keep available in the buffer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-minbuffertimeseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER SuggestedPresentationDelaySeconds
        Amount of time in seconds that the player should be from the live point at the end of the manifest.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-suggestedpresentationdelayseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER PeriodTriggers
        Controls whether MediaPackage produces single-period or multi-period DASH manifests. For more information about periods, see Multi-period DASH in AWS Elemental MediaPackage: https://docs.aws.amazon.com/mediapackage/latest/ug/multi-period.html.
Valid values:
+  **ADS** - MediaPackage will produce multi-period DASH manifests. Periods are created based on the SCTE-35 ad markers present in the input manifest.
+  *No value* - MediaPackage will produce single-period DASH manifests. This is the default setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-periodtriggers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER IncludeIframeOnlyStream
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-includeiframeonlystream
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER ManifestLayout
        Determines the position of some tags in the manifest.
Options:
+  **FULL** - elements like SegmentTemplate and ContentProtection are included in each Representation.
+  **COMPACT** - duplicate elements are combined and presented at the AdaptationSet level.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-manifestlayout
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SegmentTemplateFormat
        Determines the type of variable used in the media URL of the SegmentTemplate tag in the manifest. Also specifies if segment timeline information is included in SegmentTimeline or SegmentTemplate.
+  **NUMBER_WITH_TIMELINE** - The $Number$ variable is used in the media URL. The value of this variable is the sequential number of the segment. A full SegmentTimeline object is presented in each SegmentTemplate.
+  **NUMBER_WITH_DURATION** - The $Number$ variable is used in the media URL and a duration attribute is added to the segment template. The SegmentTimeline object is removed from the representation.
+  **TIME_WITH_TIMELINE** - The $Time$ variable is used in the media URL. The value of this variable is the timestamp of when the segment starts. A full SegmentTimeline object is presented in each SegmentTemplate.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-segmenttemplateformat
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AdTriggers
        Specifies the SCTE-35 message types that MediaPackage treats as ad markers in the output manifest.
Valid values:
+  **BREAK**
+  **DISTRIBUTOR_ADVERTISEMENT**
+  **DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY**.
+  **DISTRIBUTOR_PLACEMENT_OPPORTUNITY**.
+  **PROVIDER_ADVERTISEMENT**.
+  **PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY**.
+  **PROVIDER_PLACEMENT_OPPORTUNITY**.
+  **SPLICE_INSERT**.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-adtriggers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER AdsOnDeliveryRestrictions
        The flags on SCTE-35 segmentation descriptors that have to be present for MediaPackage to insert ad markers in the output manifest. For information about SCTE-35 in MediaPackage, see SCTE-35 Message Options in AWS Elemental MediaPackage: https://docs.aws.amazon.com/mediapackage/latest/ug/scte.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-adsondeliveryrestrictions
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Encryption
        Parameters for encrypting content.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-encryption
        UpdateType: Mutable
        Type: DashEncryption

    .PARAMETER StreamSelection
        Limitations for outputs from the endpoint, based on the video bitrate.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-streamselection
        UpdateType: Mutable
        Type: StreamSelection

    .PARAMETER UtcTiming
        Determines the type of UTC timing included in the DASH Media Presentation Description MPD.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-utctiming
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER UtcTimingUri
        Specifies the value attribute of the UTC timing field when utcTiming is set to HTTP-ISO or HTTP-HEAD.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-utctiminguri
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaPackage.OriginEndpoint.DashPackage')]
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
        $ManifestWindowSeconds,
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
        $Profile,
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
        $MinUpdatePeriodSeconds,
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
        $MinBufferTimeSeconds,
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
        $SuggestedPresentationDelaySeconds,
        [parameter(Mandatory = $false)]
        $PeriodTriggers,
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
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ManifestLayout,
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
        $SegmentTemplateFormat,
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
        $Encryption,
        [parameter(Mandatory = $false)]
        $StreamSelection,
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
        $UtcTiming,
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
        $UtcTimingUri
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaPackage.OriginEndpoint.DashPackage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
