function Add-VSQuickSightTemplateScatterPlotFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.ScatterPlotFieldWells resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.ScatterPlotFieldWells resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotfieldwells.html

    .PARAMETER ScatterPlotUnaggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotfieldwells.html#cfn-quicksight-template-scatterplotfieldwells-scatterplotunaggregatedfieldwells
        UpdateType: Mutable
        Type: ScatterPlotUnaggregatedFieldWells

    .PARAMETER ScatterPlotCategoricallyAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotfieldwells.html#cfn-quicksight-template-scatterplotfieldwells-scatterplotcategoricallyaggregatedfieldwells
        UpdateType: Mutable
        Type: ScatterPlotCategoricallyAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.ScatterPlotFieldWells')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ScatterPlotUnaggregatedFieldWells,
        [parameter(Mandatory = $false)]
        $ScatterPlotCategoricallyAggregatedFieldWells
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.ScatterPlotFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
