function Add-VSQuickSightAnalysisPivotTableTotalOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.PivotTableTotalOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.PivotTableTotalOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottabletotaloptions.html

    .PARAMETER ColumnSubtotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottabletotaloptions.html#cfn-quicksight-analysis-pivottabletotaloptions-columnsubtotaloptions
        UpdateType: Mutable
        Type: SubtotalOptions

    .PARAMETER RowSubtotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottabletotaloptions.html#cfn-quicksight-analysis-pivottabletotaloptions-rowsubtotaloptions
        UpdateType: Mutable
        Type: SubtotalOptions

    .PARAMETER RowTotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottabletotaloptions.html#cfn-quicksight-analysis-pivottabletotaloptions-rowtotaloptions
        UpdateType: Mutable
        Type: PivotTotalOptions

    .PARAMETER ColumnTotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottabletotaloptions.html#cfn-quicksight-analysis-pivottabletotaloptions-columntotaloptions
        UpdateType: Mutable
        Type: PivotTotalOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.PivotTableTotalOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ColumnSubtotalOptions,
        [parameter(Mandatory = $false)]
        $RowSubtotalOptions,
        [parameter(Mandatory = $false)]
        $RowTotalOptions,
        [parameter(Mandatory = $false)]
        $ColumnTotalOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.PivotTableTotalOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
