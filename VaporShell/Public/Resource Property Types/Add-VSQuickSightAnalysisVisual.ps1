function Add-VSQuickSightAnalysisVisual {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.Visual resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.Visual resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html

    .PARAMETER FunnelChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-funnelchartvisual
        UpdateType: Mutable
        Type: FunnelChartVisual

    .PARAMETER FilledMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-filledmapvisual
        UpdateType: Mutable
        Type: FilledMapVisual

    .PARAMETER BoxPlotVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-boxplotvisual
        UpdateType: Mutable
        Type: BoxPlotVisual

    .PARAMETER WaterfallVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-waterfallvisual
        UpdateType: Mutable
        Type: WaterfallVisual

    .PARAMETER CustomContentVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-customcontentvisual
        UpdateType: Mutable
        Type: CustomContentVisual

    .PARAMETER PieChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-piechartvisual
        UpdateType: Mutable
        Type: PieChartVisual

    .PARAMETER KPIVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-kpivisual
        UpdateType: Mutable
        Type: KPIVisual

    .PARAMETER HistogramVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-histogramvisual
        UpdateType: Mutable
        Type: HistogramVisual

    .PARAMETER TableVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-tablevisual
        UpdateType: Mutable
        Type: TableVisual

    .PARAMETER PivotTableVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-pivottablevisual
        UpdateType: Mutable
        Type: PivotTableVisual

    .PARAMETER GeospatialMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-geospatialmapvisual
        UpdateType: Mutable
        Type: GeospatialMapVisual

    .PARAMETER BarChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-barchartvisual
        UpdateType: Mutable
        Type: BarChartVisual

    .PARAMETER ScatterPlotVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-scatterplotvisual
        UpdateType: Mutable
        Type: ScatterPlotVisual

    .PARAMETER RadarChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-radarchartvisual
        UpdateType: Mutable
        Type: RadarChartVisual

    .PARAMETER HeatMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-heatmapvisual
        UpdateType: Mutable
        Type: HeatMapVisual

    .PARAMETER TreeMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-treemapvisual
        UpdateType: Mutable
        Type: TreeMapVisual

    .PARAMETER ComboChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-combochartvisual
        UpdateType: Mutable
        Type: ComboChartVisual

    .PARAMETER WordCloudVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-wordcloudvisual
        UpdateType: Mutable
        Type: WordCloudVisual

    .PARAMETER InsightVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-insightvisual
        UpdateType: Mutable
        Type: InsightVisual

    .PARAMETER SankeyDiagramVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-sankeydiagramvisual
        UpdateType: Mutable
        Type: SankeyDiagramVisual

    .PARAMETER GaugeChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-gaugechartvisual
        UpdateType: Mutable
        Type: GaugeChartVisual

    .PARAMETER LineChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-linechartvisual
        UpdateType: Mutable
        Type: LineChartVisual

    .PARAMETER EmptyVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visual.html#cfn-quicksight-analysis-visual-emptyvisual
        UpdateType: Mutable
        Type: EmptyVisual

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.Visual')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FunnelChartVisual,
        [parameter(Mandatory = $false)]
        $FilledMapVisual,
        [parameter(Mandatory = $false)]
        $BoxPlotVisual,
        [parameter(Mandatory = $false)]
        $WaterfallVisual,
        [parameter(Mandatory = $false)]
        $CustomContentVisual,
        [parameter(Mandatory = $false)]
        $PieChartVisual,
        [parameter(Mandatory = $false)]
        $KPIVisual,
        [parameter(Mandatory = $false)]
        $HistogramVisual,
        [parameter(Mandatory = $false)]
        $TableVisual,
        [parameter(Mandatory = $false)]
        $PivotTableVisual,
        [parameter(Mandatory = $false)]
        $GeospatialMapVisual,
        [parameter(Mandatory = $false)]
        $BarChartVisual,
        [parameter(Mandatory = $false)]
        $ScatterPlotVisual,
        [parameter(Mandatory = $false)]
        $RadarChartVisual,
        [parameter(Mandatory = $false)]
        $HeatMapVisual,
        [parameter(Mandatory = $false)]
        $TreeMapVisual,
        [parameter(Mandatory = $false)]
        $ComboChartVisual,
        [parameter(Mandatory = $false)]
        $WordCloudVisual,
        [parameter(Mandatory = $false)]
        $InsightVisual,
        [parameter(Mandatory = $false)]
        $SankeyDiagramVisual,
        [parameter(Mandatory = $false)]
        $GaugeChartVisual,
        [parameter(Mandatory = $false)]
        $LineChartVisual,
        [parameter(Mandatory = $false)]
        $EmptyVisual
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.Visual'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
