function Add-VSQuickSightDashboardSeriesItem {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.SeriesItem resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.SeriesItem resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-seriesitem.html

    .PARAMETER FieldSeriesItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-seriesitem.html#cfn-quicksight-dashboard-seriesitem-fieldseriesitem
        UpdateType: Mutable
        Type: FieldSeriesItem

    .PARAMETER DataFieldSeriesItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-seriesitem.html#cfn-quicksight-dashboard-seriesitem-datafieldseriesitem
        UpdateType: Mutable
        Type: DataFieldSeriesItem

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.SeriesItem')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FieldSeriesItem,
        [parameter(Mandatory = $false)]
        $DataFieldSeriesItem
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.SeriesItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
