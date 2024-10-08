function Add-VSQuickSightAnalysisPivotTableCellConditionalFormatting {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.PivotTableCellConditionalFormatting resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.PivotTableCellConditionalFormatting resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablecellconditionalformatting.html

    .PARAMETER Scope
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablecellconditionalformatting.html#cfn-quicksight-analysis-pivottablecellconditionalformatting-scope
        UpdateType: Mutable
        Type: PivotTableConditionalFormattingScope

    .PARAMETER Scopes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablecellconditionalformatting.html#cfn-quicksight-analysis-pivottablecellconditionalformatting-scopes
        UpdateType: Mutable
        Type: List
        ItemType: PivotTableConditionalFormattingScope
        DuplicatesAllowed: True

    .PARAMETER FieldId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablecellconditionalformatting.html#cfn-quicksight-analysis-pivottablecellconditionalformatting-fieldid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TextFormat
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablecellconditionalformatting.html#cfn-quicksight-analysis-pivottablecellconditionalformatting-textformat
        UpdateType: Mutable
        Type: TextConditionalFormat

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.PivotTableCellConditionalFormatting')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Scope,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.PivotTableConditionalFormattingScope"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Scopes,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FieldId,
        [parameter(Mandatory = $false)]
        $TextFormat
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.PivotTableCellConditionalFormatting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
