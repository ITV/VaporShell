function Add-VSQuickSightAnalysisCategoryInnerFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.CategoryInnerFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.CategoryInnerFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryinnerfilter.html

    .PARAMETER Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryinnerfilter.html#cfn-quicksight-analysis-categoryinnerfilter-configuration
        UpdateType: Mutable
        Type: CategoryFilterConfiguration

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryinnerfilter.html#cfn-quicksight-analysis-categoryinnerfilter-column
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER DefaultFilterControlConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryinnerfilter.html#cfn-quicksight-analysis-categoryinnerfilter-defaultfiltercontrolconfiguration
        UpdateType: Mutable
        Type: DefaultFilterControlConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.CategoryInnerFilter')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Configuration,

        [Parameter(Mandatory = $true)]
        $Column,

        [Parameter(Mandatory = $false)]
        $DefaultFilterControlConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.CategoryInnerFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
