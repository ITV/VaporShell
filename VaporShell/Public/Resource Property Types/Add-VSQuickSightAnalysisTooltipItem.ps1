function Add-VSQuickSightAnalysisTooltipItem {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TooltipItem resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TooltipItem resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipitem.html

    .PARAMETER FieldTooltipItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipitem.html#cfn-quicksight-analysis-tooltipitem-fieldtooltipitem
        UpdateType: Mutable
        Type: FieldTooltipItem

    .PARAMETER ColumnTooltipItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipitem.html#cfn-quicksight-analysis-tooltipitem-columntooltipitem
        UpdateType: Mutable
        Type: ColumnTooltipItem

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TooltipItem')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FieldTooltipItem,
        [parameter(Mandatory = $false)]
        $ColumnTooltipItem
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TooltipItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
