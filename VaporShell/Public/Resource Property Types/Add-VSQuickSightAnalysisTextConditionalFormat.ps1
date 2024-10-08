function Add-VSQuickSightAnalysisTextConditionalFormat {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TextConditionalFormat resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TextConditionalFormat resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textconditionalformat.html

    .PARAMETER TextColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textconditionalformat.html#cfn-quicksight-analysis-textconditionalformat-textcolor
        UpdateType: Mutable
        Type: ConditionalFormattingColor

    .PARAMETER Icon
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textconditionalformat.html#cfn-quicksight-analysis-textconditionalformat-icon
        UpdateType: Mutable
        Type: ConditionalFormattingIcon

    .PARAMETER BackgroundColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-textconditionalformat.html#cfn-quicksight-analysis-textconditionalformat-backgroundcolor
        UpdateType: Mutable
        Type: ConditionalFormattingColor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TextConditionalFormat')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TextColor,

        [Parameter(Mandatory = $false)]
        $Icon,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TextConditionalFormat'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
