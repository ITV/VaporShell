function Add-VSQuickSightTemplateWaterfallChartFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.WaterfallChartFieldWells resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.WaterfallChartFieldWells resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartfieldwells.html

    .PARAMETER WaterfallChartAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartfieldwells.html#cfn-quicksight-template-waterfallchartfieldwells-waterfallchartaggregatedfieldwells
        UpdateType: Mutable
        Type: WaterfallChartAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.WaterfallChartFieldWells')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $WaterfallChartAggregatedFieldWells

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.WaterfallChartFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
