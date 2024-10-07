function Add-VSQuickSightDashboardHeatMapConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.HeatMapConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.HeatMapConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: HeatMapSortConfiguration

    .PARAMETER ColumnLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-columnlabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER DataLabels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-datalabels
        UpdateType: Mutable
        Type: DataLabelOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-fieldwells
        UpdateType: Mutable
        Type: HeatMapFieldWells

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER ColorScale
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-colorscale
        UpdateType: Mutable
        Type: ColorScale

    .PARAMETER RowLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-rowlabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.HeatMapConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SortConfiguration,
        [parameter(Mandatory = $false)]
        $ColumnLabelOptions,
        [parameter(Mandatory = $false)]
        $Legend,
        [parameter(Mandatory = $false)]
        $DataLabels,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $Tooltip,
        [parameter(Mandatory = $false)]
        $ColorScale,
        [parameter(Mandatory = $false)]
        $RowLabelOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.HeatMapConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
