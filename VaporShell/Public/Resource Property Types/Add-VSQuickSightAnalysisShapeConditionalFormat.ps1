function Add-VSQuickSightAnalysisShapeConditionalFormat {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ShapeConditionalFormat resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ShapeConditionalFormat resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-shapeconditionalformat.html

    .PARAMETER BackgroundColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-shapeconditionalformat.html#cfn-quicksight-analysis-shapeconditionalformat-backgroundcolor
        UpdateType: Mutable
        Type: ConditionalFormattingColor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ShapeConditionalFormat')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $BackgroundColor

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ShapeConditionalFormat'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
