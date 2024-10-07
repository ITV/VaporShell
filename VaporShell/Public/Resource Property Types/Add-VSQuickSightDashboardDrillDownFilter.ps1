function Add-VSQuickSightDashboardDrillDownFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DrillDownFilter resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DrillDownFilter resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-drilldownfilter.html

    .PARAMETER NumericEqualityFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-drilldownfilter.html#cfn-quicksight-dashboard-drilldownfilter-numericequalityfilter
        UpdateType: Mutable
        Type: NumericEqualityDrillDownFilter

    .PARAMETER TimeRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-drilldownfilter.html#cfn-quicksight-dashboard-drilldownfilter-timerangefilter
        UpdateType: Mutable
        Type: TimeRangeDrillDownFilter

    .PARAMETER CategoryFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-drilldownfilter.html#cfn-quicksight-dashboard-drilldownfilter-categoryfilter
        UpdateType: Mutable
        Type: CategoryDrillDownFilter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DrillDownFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NumericEqualityFilter,
        [parameter(Mandatory = $false)]
        $TimeRangeFilter,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.DrillDownFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
