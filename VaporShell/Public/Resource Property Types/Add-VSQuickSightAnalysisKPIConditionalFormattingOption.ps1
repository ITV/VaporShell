function Add-VSQuickSightAnalysisKPIConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.KPIConditionalFormattingOption resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.KPIConditionalFormattingOption resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconditionalformattingoption.html

    .PARAMETER PrimaryValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconditionalformattingoption.html#cfn-quicksight-analysis-kpiconditionalformattingoption-primaryvalue
        UpdateType: Mutable
        Type: KPIPrimaryValueConditionalFormatting

    .PARAMETER ActualValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconditionalformattingoption.html#cfn-quicksight-analysis-kpiconditionalformattingoption-actualvalue
        UpdateType: Mutable
        Type: KPIActualValueConditionalFormatting

    .PARAMETER ComparisonValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconditionalformattingoption.html#cfn-quicksight-analysis-kpiconditionalformattingoption-comparisonvalue
        UpdateType: Mutable
        Type: KPIComparisonValueConditionalFormatting

    .PARAMETER ProgressBar
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconditionalformattingoption.html#cfn-quicksight-analysis-kpiconditionalformattingoption-progressbar
        UpdateType: Mutable
        Type: KPIProgressBarConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.KPIConditionalFormattingOption')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PrimaryValue,
        [parameter(Mandatory = $false)]
        $ActualValue,
        [parameter(Mandatory = $false)]
        $ComparisonValue,
        [parameter(Mandatory = $false)]
        $ProgressBar
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.KPIConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
