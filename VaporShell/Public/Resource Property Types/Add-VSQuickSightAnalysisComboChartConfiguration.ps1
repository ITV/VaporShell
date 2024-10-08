function Add-VSQuickSightAnalysisComboChartConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ComboChartConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ComboChartConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: ComboChartSortConfiguration

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER ReferenceLines
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-referencelines
        UpdateType: Mutable
        Type: List
        ItemType: ReferenceLine
        DuplicatesAllowed: True

    .PARAMETER ColorLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-colorlabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER BarDataLabels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-bardatalabels
        UpdateType: Mutable
        Type: DataLabelOptions

    .PARAMETER CategoryLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-categorylabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER SingleAxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-singleaxisoptions
        UpdateType: Mutable
        Type: SingleAxisOptions

    .PARAMETER PrimaryYAxisDisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-primaryyaxisdisplayoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .PARAMETER BarsArrangement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-barsarrangement
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SecondaryYAxisLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-secondaryyaxislabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER LineDataLabels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-linedatalabels
        UpdateType: Mutable
        Type: DataLabelOptions

    .PARAMETER CategoryAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-categoryaxis
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER PrimaryYAxisLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-primaryyaxislabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-fieldwells
        UpdateType: Mutable
        Type: ComboChartFieldWells

    .PARAMETER SecondaryYAxisDisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-secondaryyaxisdisplayoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ComboChartConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SortConfiguration,
        [parameter(Mandatory = $false)]
        $Legend,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.ReferenceLine"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ReferenceLines,
        [parameter(Mandatory = $false)]
        $ColorLabelOptions,
        [parameter(Mandatory = $false)]
        $BarDataLabels,
        [parameter(Mandatory = $false)]
        $CategoryLabelOptions,
        [parameter(Mandatory = $false)]
        $Tooltip,
        [parameter(Mandatory = $false)]
        $SingleAxisOptions,
        [parameter(Mandatory = $false)]
        $PrimaryYAxisDisplayOptions,
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
        $BarsArrangement,
        [parameter(Mandatory = $false)]
        $SecondaryYAxisLabelOptions,
        [parameter(Mandatory = $false)]
        $LineDataLabels,
        [parameter(Mandatory = $false)]
        $CategoryAxis,
        [parameter(Mandatory = $false)]
        $PrimaryYAxisLabelOptions,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $SecondaryYAxisDisplayOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ComboChartConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
