function Add-VSQuickSightDashboardWordCloudChartConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.WordCloudChartConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.WordCloudChartConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudchartconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudchartconfiguration.html#cfn-quicksight-dashboard-wordcloudchartconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: WordCloudSortConfiguration

    .PARAMETER CategoryLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudchartconfiguration.html#cfn-quicksight-dashboard-wordcloudchartconfiguration-categorylabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudchartconfiguration.html#cfn-quicksight-dashboard-wordcloudchartconfiguration-fieldwells
        UpdateType: Mutable
        Type: WordCloudFieldWells

    .PARAMETER WordCloudOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudchartconfiguration.html#cfn-quicksight-dashboard-wordcloudchartconfiguration-wordcloudoptions
        UpdateType: Mutable
        Type: WordCloudOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.WordCloudChartConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SortConfiguration,

        [Parameter(Mandatory = $false)]
        $CategoryLabelOptions,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $WordCloudOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.WordCloudChartConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
