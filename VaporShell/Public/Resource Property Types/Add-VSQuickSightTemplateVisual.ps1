function Add-VSQuickSightTemplateVisual {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.Visual resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.Visual resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html

    .PARAMETER FunnelChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-funnelchartvisual
        UpdateType: Mutable
        Type: FunnelChartVisual

    .PARAMETER FilledMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-filledmapvisual
        UpdateType: Mutable
        Type: FilledMapVisual

    .PARAMETER BoxPlotVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-boxplotvisual
        UpdateType: Mutable
        Type: BoxPlotVisual

    .PARAMETER WaterfallVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-waterfallvisual
        UpdateType: Mutable
        Type: WaterfallVisual

    .PARAMETER CustomContentVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-customcontentvisual
        UpdateType: Mutable
        Type: CustomContentVisual

    .PARAMETER PieChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-piechartvisual
        UpdateType: Mutable
        Type: PieChartVisual

    .PARAMETER KPIVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-kpivisual
        UpdateType: Mutable
        Type: KPIVisual

    .PARAMETER HistogramVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-histogramvisual
        UpdateType: Mutable
        Type: HistogramVisual

    .PARAMETER TableVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-tablevisual
        UpdateType: Mutable
        Type: TableVisual

    .PARAMETER PivotTableVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-pivottablevisual
        UpdateType: Mutable
        Type: PivotTableVisual

    .PARAMETER GeospatialMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-geospatialmapvisual
        UpdateType: Mutable
        Type: GeospatialMapVisual

    .PARAMETER BarChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-barchartvisual
        UpdateType: Mutable
        Type: BarChartVisual

    .PARAMETER ScatterPlotVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-scatterplotvisual
        UpdateType: Mutable
        Type: ScatterPlotVisual

    .PARAMETER RadarChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-radarchartvisual
        UpdateType: Mutable
        Type: RadarChartVisual

    .PARAMETER HeatMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-heatmapvisual
        UpdateType: Mutable
        Type: HeatMapVisual

    .PARAMETER TreeMapVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-treemapvisual
        UpdateType: Mutable
        Type: TreeMapVisual

    .PARAMETER ComboChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-combochartvisual
        UpdateType: Mutable
        Type: ComboChartVisual

    .PARAMETER WordCloudVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-wordcloudvisual
        UpdateType: Mutable
        Type: WordCloudVisual

    .PARAMETER InsightVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-insightvisual
        UpdateType: Mutable
        Type: InsightVisual

    .PARAMETER SankeyDiagramVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-sankeydiagramvisual
        UpdateType: Mutable
        Type: SankeyDiagramVisual

    .PARAMETER GaugeChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-gaugechartvisual
        UpdateType: Mutable
        Type: GaugeChartVisual

    .PARAMETER LineChartVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-linechartvisual
        UpdateType: Mutable
        Type: LineChartVisual

    .PARAMETER EmptyVisual
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-emptyvisual
        UpdateType: Mutable
        Type: EmptyVisual

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.Visual')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.Visual'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
