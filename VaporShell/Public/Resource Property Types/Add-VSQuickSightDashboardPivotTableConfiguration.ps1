function Add-VSQuickSightDashboardPivotTableConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.PivotTableConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.PivotTableConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconfiguration.html#cfn-quicksight-dashboard-pivottableconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: PivotTableSortConfiguration

    .PARAMETER PaginatedReportOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconfiguration.html#cfn-quicksight-dashboard-pivottableconfiguration-paginatedreportoptions
        UpdateType: Mutable
        Type: PivotTablePaginatedReportOptions

    .PARAMETER TableOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconfiguration.html#cfn-quicksight-dashboard-pivottableconfiguration-tableoptions
        UpdateType: Mutable
        Type: PivotTableOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconfiguration.html#cfn-quicksight-dashboard-pivottableconfiguration-fieldwells
        UpdateType: Mutable
        Type: PivotTableFieldWells

    .PARAMETER FieldOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconfiguration.html#cfn-quicksight-dashboard-pivottableconfiguration-fieldoptions
        UpdateType: Mutable
        Type: PivotTableFieldOptions

    .PARAMETER TotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableconfiguration.html#cfn-quicksight-dashboard-pivottableconfiguration-totaloptions
        UpdateType: Mutable
        Type: PivotTableTotalOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.PivotTableConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SortConfiguration,

        [Parameter(Mandatory = $false)]
        $PaginatedReportOptions,

        [Parameter(Mandatory = $false)]
        $TableOptions,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $FieldOptions,

        [Parameter(Mandatory = $false)]
        $TotalOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.PivotTableConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
