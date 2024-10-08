function Add-VSQuickSightTemplateWaterfallChartConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.WaterfallChartConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.WaterfallChartConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html

    .PARAMETER CategoryAxisLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-categoryaxislabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: WaterfallChartSortConfiguration

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER DataLabels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-datalabels
        UpdateType: Mutable
        Type: DataLabelOptions

    .PARAMETER PrimaryYAxisLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-primaryyaxislabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-fieldwells
        UpdateType: Mutable
        Type: WaterfallChartFieldWells

    .PARAMETER WaterfallChartOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-waterfallchartoptions
        UpdateType: Mutable
        Type: WaterfallChartOptions

    .PARAMETER ColorConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-colorconfiguration
        UpdateType: Mutable
        Type: WaterfallChartColorConfiguration

    .PARAMETER CategoryAxisDisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-categoryaxisdisplayoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER PrimaryYAxisDisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-primaryyaxisdisplayoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartconfiguration.html#cfn-quicksight-template-waterfallchartconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.WaterfallChartConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CategoryAxisLabelOptions,
        [parameter(Mandatory = $false)]
        $SortConfiguration,
        [parameter(Mandatory = $false)]
        $Legend,
        [parameter(Mandatory = $false)]
        $DataLabels,
        [parameter(Mandatory = $false)]
        $PrimaryYAxisLabelOptions,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $WaterfallChartOptions,
        [parameter(Mandatory = $false)]
        $ColorConfiguration,
        [parameter(Mandatory = $false)]
        $CategoryAxisDisplayOptions,
        [parameter(Mandatory = $false)]
        $PrimaryYAxisDisplayOptions,
        [parameter(Mandatory = $false)]
        $VisualPalette
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.WaterfallChartConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
