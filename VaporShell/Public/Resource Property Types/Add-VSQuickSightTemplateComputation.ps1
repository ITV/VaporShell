function Add-VSQuickSightTemplateComputation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.Computation resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.Computation resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html

    .PARAMETER PeriodToDate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-periodtodate
        UpdateType: Mutable
        Type: PeriodToDateComputation

    .PARAMETER GrowthRate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-growthrate
        UpdateType: Mutable
        Type: GrowthRateComputation

    .PARAMETER TopBottomRanked
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-topbottomranked
        UpdateType: Mutable
        Type: TopBottomRankedComputation

    .PARAMETER TotalAggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-totalaggregation
        UpdateType: Mutable
        Type: TotalAggregationComputation

    .PARAMETER Forecast
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-forecast
        UpdateType: Mutable
        Type: ForecastComputation

    .PARAMETER MaximumMinimum
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-maximumminimum
        UpdateType: Mutable
        Type: MaximumMinimumComputation

    .PARAMETER PeriodOverPeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-periodoverperiod
        UpdateType: Mutable
        Type: PeriodOverPeriodComputation

    .PARAMETER MetricComparison
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-metriccomparison
        UpdateType: Mutable
        Type: MetricComparisonComputation

    .PARAMETER TopBottomMovers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-topbottommovers
        UpdateType: Mutable
        Type: TopBottomMoversComputation

    .PARAMETER UniqueValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-computation.html#cfn-quicksight-template-computation-uniquevalues
        UpdateType: Mutable
        Type: UniqueValuesComputation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.Computation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PeriodToDate,
        [parameter(Mandatory = $false)]
        $GrowthRate,
        [parameter(Mandatory = $false)]
        $TopBottomRanked,
        [parameter(Mandatory = $false)]
        $TotalAggregation,
        [parameter(Mandatory = $false)]
        $Forecast,
        [parameter(Mandatory = $false)]
        $MaximumMinimum,
        [parameter(Mandatory = $false)]
        $PeriodOverPeriod,
        [parameter(Mandatory = $false)]
        $MetricComparison,
        [parameter(Mandatory = $false)]
        $TopBottomMovers,
        [parameter(Mandatory = $false)]
        $UniqueValues
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.Computation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
