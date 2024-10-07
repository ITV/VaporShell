function Add-VSQuickSightDashboardPivotTableSortBy {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.PivotTableSortBy resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.PivotTableSortBy resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottablesortby.html

    .PARAMETER Field
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottablesortby.html#cfn-quicksight-dashboard-pivottablesortby-field
        UpdateType: Mutable
        Type: FieldSort

    .PARAMETER DataPath
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottablesortby.html#cfn-quicksight-dashboard-pivottablesortby-datapath
        UpdateType: Mutable
        Type: DataPathSort

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottablesortby.html#cfn-quicksight-dashboard-pivottablesortby-column
        UpdateType: Mutable
        Type: ColumnSort

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.PivotTableSortBy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Field,
        [parameter(Mandatory = $false)]
        $DataPath,
        [parameter(Mandatory = $false)]
        $Column
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.PivotTableSortBy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
