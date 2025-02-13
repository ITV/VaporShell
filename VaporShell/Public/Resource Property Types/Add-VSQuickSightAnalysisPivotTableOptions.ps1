function Add-VSQuickSightAnalysisPivotTableOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.PivotTableOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.PivotTableOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html

    .PARAMETER RowFieldNamesStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-rowfieldnamesstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER RowHeaderStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-rowheaderstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER CollapsedRowDimensionsVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-collapsedrowdimensionsvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RowsLayout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-rowslayout
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MetricPlacement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-metricplacement
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DefaultCellWidth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-defaultcellwidth
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ColumnNamesVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-columnnamesvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RowsLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-rowslabeloptions
        UpdateType: Mutable
        Type: PivotTableRowsLabelOptions

    .PARAMETER SingleMetricVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-singlemetricvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ColumnHeaderStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-columnheaderstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER ToggleButtonsVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-togglebuttonsvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CellStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-cellstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER RowAlternateColorOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottableoptions.html#cfn-quicksight-analysis-pivottableoptions-rowalternatecoloroptions
        UpdateType: Mutable
        Type: RowAlternateColorOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.PivotTableOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RowFieldNamesStyle,

        [Parameter(Mandatory = $false)]
        $RowHeaderStyle,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CollapsedRowDimensionsVisibility,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RowsLayout,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MetricPlacement,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultCellWidth,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ColumnNamesVisibility,

        [Parameter(Mandatory = $false)]
        $RowsLabelOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SingleMetricVisibility,

        [Parameter(Mandatory = $false)]
        $ColumnHeaderStyle,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ToggleButtonsVisibility,

        [Parameter(Mandatory = $false)]
        $CellStyle,

        [Parameter(Mandatory = $false)]
        $RowAlternateColorOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.PivotTableOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
