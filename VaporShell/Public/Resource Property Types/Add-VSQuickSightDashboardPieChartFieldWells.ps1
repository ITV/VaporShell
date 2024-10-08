function Add-VSQuickSightDashboardPieChartFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.PieChartFieldWells resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.PieChartFieldWells resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-piechartfieldwells.html

    .PARAMETER PieChartAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-piechartfieldwells.html#cfn-quicksight-dashboard-piechartfieldwells-piechartaggregatedfieldwells
        UpdateType: Mutable
        Type: PieChartAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.PieChartFieldWells')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PieChartAggregatedFieldWells

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.PieChartFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
