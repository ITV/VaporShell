function Add-VSQuickSightTemplateFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.Filter resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.Filter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html

    .PARAMETER NestedFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-nestedfilter
        UpdateType: Mutable
        Type: NestedFilter

    .PARAMETER NumericEqualityFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-numericequalityfilter
        UpdateType: Mutable
        Type: NumericEqualityFilter

    .PARAMETER NumericRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-numericrangefilter
        UpdateType: Mutable
        Type: NumericRangeFilter

    .PARAMETER TimeRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-timerangefilter
        UpdateType: Mutable
        Type: TimeRangeFilter

    .PARAMETER RelativeDatesFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-relativedatesfilter
        UpdateType: Mutable
        Type: RelativeDatesFilter

    .PARAMETER TopBottomFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-topbottomfilter
        UpdateType: Mutable
        Type: TopBottomFilter

    .PARAMETER TimeEqualityFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-timeequalityfilter
        UpdateType: Mutable
        Type: TimeEqualityFilter

    .PARAMETER CategoryFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-categoryfilter
        UpdateType: Mutable
        Type: CategoryFilter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.Filter')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NestedFilter,

        [Parameter(Mandatory = $false)]
        $NumericEqualityFilter,

        [Parameter(Mandatory = $false)]
        $NumericRangeFilter,

        [Parameter(Mandatory = $false)]
        $TimeRangeFilter,

        [Parameter(Mandatory = $false)]
        $RelativeDatesFilter,

        [Parameter(Mandatory = $false)]
        $TopBottomFilter,

        [Parameter(Mandatory = $false)]
        $TimeEqualityFilter,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.Filter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
