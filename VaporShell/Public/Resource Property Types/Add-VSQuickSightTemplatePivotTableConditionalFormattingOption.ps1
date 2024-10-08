function Add-VSQuickSightTemplatePivotTableConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.PivotTableConditionalFormattingOption resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.PivotTableConditionalFormattingOption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconditionalformattingoption.html

    .PARAMETER Cell
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconditionalformattingoption.html#cfn-quicksight-template-pivottableconditionalformattingoption-cell
        UpdateType: Mutable
        Type: PivotTableCellConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.PivotTableConditionalFormattingOption')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Cell

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.PivotTableConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
