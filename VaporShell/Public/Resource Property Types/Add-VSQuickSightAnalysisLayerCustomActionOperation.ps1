function Add-VSQuickSightAnalysisLayerCustomActionOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.LayerCustomActionOperation resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.LayerCustomActionOperation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html

    .PARAMETER NavigationOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-navigationoperation
        UpdateType: Mutable
        Type: CustomActionNavigationOperation

    .PARAMETER SetParametersOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-setparametersoperation
        UpdateType: Mutable
        Type: CustomActionSetParametersOperation

    .PARAMETER FilterOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-filteroperation
        UpdateType: Mutable
        Type: CustomActionFilterOperation

    .PARAMETER URLOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-urloperation
        UpdateType: Mutable
        Type: CustomActionURLOperation

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.LayerCustomActionOperation')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NavigationOperation,

        [Parameter(Mandatory = $false)]
        $SetParametersOperation,

        [Parameter(Mandatory = $false)]
        $FilterOperation,

        [Parameter(Mandatory = $false)]
        $URLOperation

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.LayerCustomActionOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
