function Add-VSQuickSightAnalysisSeriesItem {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.SeriesItem resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.SeriesItem resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-seriesitem.html

    .PARAMETER FieldSeriesItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-seriesitem.html#cfn-quicksight-analysis-seriesitem-fieldseriesitem
        UpdateType: Mutable
        Type: FieldSeriesItem

    .PARAMETER DataFieldSeriesItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-seriesitem.html#cfn-quicksight-analysis-seriesitem-datafieldseriesitem
        UpdateType: Mutable
        Type: DataFieldSeriesItem

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.SeriesItem')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.SeriesItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
