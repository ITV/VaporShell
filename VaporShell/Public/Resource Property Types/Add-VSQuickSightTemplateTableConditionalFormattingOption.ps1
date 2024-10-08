function Add-VSQuickSightTemplateTableConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TableConditionalFormattingOption resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TableConditionalFormattingOption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconditionalformattingoption.html

    .PARAMETER Row
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconditionalformattingoption.html#cfn-quicksight-template-tableconditionalformattingoption-row
        UpdateType: Mutable
        Type: TableRowConditionalFormatting

    .PARAMETER Cell
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconditionalformattingoption.html#cfn-quicksight-template-tableconditionalformattingoption-cell
        UpdateType: Mutable
        Type: TableCellConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.TableConditionalFormattingOption')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Row,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TableConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
