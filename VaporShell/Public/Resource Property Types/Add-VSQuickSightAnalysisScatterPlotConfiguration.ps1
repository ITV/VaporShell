function Add-VSQuickSightAnalysisScatterPlotConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ScatterPlotConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ScatterPlotConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html

    .PARAMETER YAxisLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-yaxislabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER YAxisDisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-yaxisdisplayoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER DataLabels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-datalabels
        UpdateType: Mutable
        Type: DataLabelOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-fieldwells
        UpdateType: Mutable
        Type: ScatterPlotFieldWells

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER XAxisLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-xaxislabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .PARAMETER XAxisDisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotconfiguration.html#cfn-quicksight-analysis-scatterplotconfiguration-xaxisdisplayoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ScatterPlotConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $YAxisLabelOptions,

        [Parameter(Mandatory = $false)]
        $Legend,

        [Parameter(Mandatory = $false)]
        $YAxisDisplayOptions,

        [Parameter(Mandatory = $false)]
        $DataLabels,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $Tooltip,

        [Parameter(Mandatory = $false)]
        $XAxisLabelOptions,

        [Parameter(Mandatory = $false)]
        $VisualPalette,

        [Parameter(Mandatory = $false)]
        $XAxisDisplayOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ScatterPlotConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
