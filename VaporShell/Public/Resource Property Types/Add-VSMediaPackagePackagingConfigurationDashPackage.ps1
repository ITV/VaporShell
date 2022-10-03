function Add-VSMediaPackagePackagingConfigurationDashPackage {
    <#
    .SYNOPSIS
        Adds an AWS::MediaPackage::PackagingConfiguration.DashPackage resource property to the template. Parameters for a packaging configuration that uses Dynamic Adaptive Streaming over HTTP (DASH packaging.

    .DESCRIPTION
        Adds an AWS::MediaPackage::PackagingConfiguration.DashPackage resource property to the template.
Parameters for a packaging configuration that uses Dynamic Adaptive Streaming over HTTP (DASH packaging.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashpackage.html

    .PARAMETER DashManifests
        A list of DASH manifest configurations that are available from this endpoint.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashpackage.html#cfn-mediapackage-packagingconfiguration-dashpackage-dashmanifests
        UpdateType: Mutable
        Type: List
        ItemType: DashManifest

    .PARAMETER Encryption
        Parameters for encrypting content.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashpackage.html#cfn-mediapackage-packagingconfiguration-dashpackage-encryption
        UpdateType: Mutable
        Type: DashEncryption

    .PARAMETER PeriodTriggers
        Controls whether MediaPackage produces single-period or multi-period DASH manifests. For more information about periods, see Multi-period DASH in AWS Elemental MediaPackage: https://docs.aws.amazon.com/mediapackage/latest/ug/multi-period.html.
Valid values:
+  **ADS** - MediaPackage will produce multi-period DASH manifests. Periods are created based on the SCTE-35 ad markers present in the input manifest.
+  *No value* - MediaPackage will produce single-period DASH manifests. This is the default setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashpackage.html#cfn-mediapackage-packagingconfiguration-dashpackage-periodtriggers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SegmentDurationSeconds
        Duration in seconds of each fragment. Actual fragments are rounded to the nearest multiple of the source segment duration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashpackage.html#cfn-mediapackage-packagingconfiguration-dashpackage-segmentdurationseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER SegmentTemplateFormat
        Determines the type of SegmentTemplate included in the Media Presentation Description MPD. When set to **NUMBER_WITH_TIMELINE**, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs. When set to **TIME_WITH_TIMELINE**, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to **NUMBER_WITH_DURATION**, only a duration is included in each SegmentTemplate, with $Number$ media URLs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashpackage.html#cfn-mediapackage-packagingconfiguration-dashpackage-segmenttemplateformat
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER IncludeEncoderConfigurationInSegments
        When includeEncoderConfigurationInSegments is set to true, MediaPackage places your encoder's Sequence Parameter Set SPS, Picture Parameter Set PPS, and Video Parameter Set VPS metadata in every video segment instead of in the init fragment. This lets you use different SPS/PPS/VPS settings for your assets during content playback.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashpackage.html#cfn-mediapackage-packagingconfiguration-dashpackage-includeencoderconfigurationinsegments
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaPackage.PackagingConfiguration.DashPackage')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaPackage.PackagingConfiguration.DashManifest"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DashManifests,
        [parameter(Mandatory = $false)]
        $Encryption,
        [parameter(Mandatory = $false)]
        $PeriodTriggers,
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
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IncludeEncoderConfigurationInSegments
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaPackage.PackagingConfiguration.DashPackage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
