function Add-VSQuickSightAnalysisFilledMapConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.FilledMapConditionalFormattingOption resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.FilledMapConditionalFormattingOption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapconditionalformattingoption.html

    .PARAMETER Shape
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapconditionalformattingoption.html#cfn-quicksight-analysis-filledmapconditionalformattingoption-shape
        UpdateType: Mutable
        Type: FilledMapShapeConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.FilledMapConditionalFormattingOption')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Shape

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.FilledMapConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
