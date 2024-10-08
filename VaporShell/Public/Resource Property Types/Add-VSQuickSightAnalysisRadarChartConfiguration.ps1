function Add-VSQuickSightAnalysisRadarChartConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.RadarChartConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.RadarChartConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: RadarChartSortConfiguration

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER Shape
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-shape
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER BaseSeriesSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-baseseriessettings
        UpdateType: Mutable
        Type: RadarChartSeriesSettings

    .PARAMETER ColorLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-colorlabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER CategoryLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-categorylabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER AxesRangeScale
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-axesrangescale
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .PARAMETER AlternateBandColorsVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-alternatebandcolorsvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER StartAngle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-startangle
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER CategoryAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-categoryaxis
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-fieldwells
        UpdateType: Mutable
        Type: RadarChartFieldWells

    .PARAMETER ColorAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-coloraxis
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER AlternateBandOddColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-alternatebandoddcolor
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AlternateBandEvenColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartconfiguration.html#cfn-quicksight-analysis-radarchartconfiguration-alternatebandevencolor
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.RadarChartConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SortConfiguration,
        [parameter(Mandatory = $false)]
        $Legend,
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
        $Shape,
        [parameter(Mandatory = $false)]
        $BaseSeriesSettings,
        [parameter(Mandatory = $false)]
        $ColorLabelOptions,
        [parameter(Mandatory = $false)]
        $CategoryLabelOptions,
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
        $AxesRangeScale,
        [parameter(Mandatory = $false)]
        $VisualPalette,
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
        $AlternateBandColorsVisibility,
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
        $StartAngle,
        [parameter(Mandatory = $false)]
        $CategoryAxis,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $ColorAxis,
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
        $AlternateBandOddColor,
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
        $AlternateBandEvenColor
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.RadarChartConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
