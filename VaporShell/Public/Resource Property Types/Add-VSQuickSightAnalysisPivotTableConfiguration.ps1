function Add-VSQuickSightAnalysisPivotTableConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.PivotTableConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.PivotTableConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableconfiguration.html#cfn-quicksight-analysis-pivottableconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: PivotTableSortConfiguration

    .PARAMETER PaginatedReportOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableconfiguration.html#cfn-quicksight-analysis-pivottableconfiguration-paginatedreportoptions
        UpdateType: Mutable
        Type: PivotTablePaginatedReportOptions

    .PARAMETER TableOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableconfiguration.html#cfn-quicksight-analysis-pivottableconfiguration-tableoptions
        UpdateType: Mutable
        Type: PivotTableOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableconfiguration.html#cfn-quicksight-analysis-pivottableconfiguration-fieldwells
        UpdateType: Mutable
        Type: PivotTableFieldWells

    .PARAMETER FieldOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableconfiguration.html#cfn-quicksight-analysis-pivottableconfiguration-fieldoptions
        UpdateType: Mutable
        Type: PivotTableFieldOptions

    .PARAMETER TotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableconfiguration.html#cfn-quicksight-analysis-pivottableconfiguration-totaloptions
        UpdateType: Mutable
        Type: PivotTableTotalOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.PivotTableConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SortConfiguration,
        [parameter(Mandatory = $false)]
        $PaginatedReportOptions,
        [parameter(Mandatory = $false)]
        $TableOptions,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $FieldOptions,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.PivotTableConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
