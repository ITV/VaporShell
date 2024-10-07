function Add-VSQuickSightAnalysisCategoryDrillDownFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.CategoryDrillDownFilter resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.CategoryDrillDownFilter resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categorydrilldownfilter.html

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categorydrilldownfilter.html#cfn-quicksight-analysis-categorydrilldownfilter-column
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER CategoryValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categorydrilldownfilter.html#cfn-quicksight-analysis-categorydrilldownfilter-categoryvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.CategoryDrillDownFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Column,
        [parameter(Mandatory = $true)]
        $CategoryValues
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.CategoryDrillDownFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
