function Add-VSQuickSightAnalysisFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.Filter resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.Filter resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html

    .PARAMETER NestedFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-nestedfilter
        UpdateType: Mutable
        Type: NestedFilter

    .PARAMETER NumericEqualityFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-numericequalityfilter
        UpdateType: Mutable
        Type: NumericEqualityFilter

    .PARAMETER NumericRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-numericrangefilter
        UpdateType: Mutable
        Type: NumericRangeFilter

    .PARAMETER TimeRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-timerangefilter
        UpdateType: Mutable
        Type: TimeRangeFilter

    .PARAMETER RelativeDatesFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-relativedatesfilter
        UpdateType: Mutable
        Type: RelativeDatesFilter

    .PARAMETER TopBottomFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-topbottomfilter
        UpdateType: Mutable
        Type: TopBottomFilter

    .PARAMETER TimeEqualityFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-timeequalityfilter
        UpdateType: Mutable
        Type: TimeEqualityFilter

    .PARAMETER CategoryFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filter.html#cfn-quicksight-analysis-filter-categoryfilter
        UpdateType: Mutable
        Type: CategoryFilter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.Filter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NestedFilter,
        [parameter(Mandatory = $false)]
        $NumericEqualityFilter,
        [parameter(Mandatory = $false)]
        $NumericRangeFilter,
        [parameter(Mandatory = $false)]
        $TimeRangeFilter,
        [parameter(Mandatory = $false)]
        $RelativeDatesFilter,
        [parameter(Mandatory = $false)]
        $TopBottomFilter,
        [parameter(Mandatory = $false)]
        $TimeEqualityFilter,
        [parameter(Mandatory = $false)]
        $CategoryFilter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.Filter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
