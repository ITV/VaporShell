function Add-VSQuickSightAnalysisComparisonFormatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ComparisonFormatConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ComparisonFormatConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-comparisonformatconfiguration.html

    .PARAMETER NumberDisplayFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-comparisonformatconfiguration.html#cfn-quicksight-analysis-comparisonformatconfiguration-numberdisplayformatconfiguration
        UpdateType: Mutable
        Type: NumberDisplayFormatConfiguration

    .PARAMETER PercentageDisplayFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-comparisonformatconfiguration.html#cfn-quicksight-analysis-comparisonformatconfiguration-percentagedisplayformatconfiguration
        UpdateType: Mutable
        Type: PercentageDisplayFormatConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ComparisonFormatConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NumberDisplayFormatConfiguration,

        [Parameter(Mandatory = $false)]
        $PercentageDisplayFormatConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ComparisonFormatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
