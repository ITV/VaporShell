function Add-VSQuickSightAnalysisFilledMapFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.FilledMapFieldWells resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.FilledMapFieldWells resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapfieldwells.html

    .PARAMETER FilledMapAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapfieldwells.html#cfn-quicksight-analysis-filledmapfieldwells-filledmapaggregatedfieldwells
        UpdateType: Mutable
        Type: FilledMapAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.FilledMapFieldWells')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FilledMapAggregatedFieldWells

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.FilledMapFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
