function Add-VSQuickSightDashboardPivotTableOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.PivotTableOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.PivotTableOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html

    .PARAMETER RowFieldNamesStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-rowfieldnamesstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER RowHeaderStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-rowheaderstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER CollapsedRowDimensionsVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-collapsedrowdimensionsvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RowsLayout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-rowslayout
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MetricPlacement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-metricplacement
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DefaultCellWidth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-defaultcellwidth
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ColumnNamesVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-columnnamesvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RowsLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-rowslabeloptions
        UpdateType: Mutable
        Type: PivotTableRowsLabelOptions

    .PARAMETER SingleMetricVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-singlemetricvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ColumnHeaderStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-columnheaderstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER ToggleButtonsVisibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-togglebuttonsvisibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CellStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-cellstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER RowAlternateColorOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pivottableoptions.html#cfn-quicksight-dashboard-pivottableoptions-rowalternatecoloroptions
        UpdateType: Mutable
        Type: RowAlternateColorOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.PivotTableOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RowFieldNamesStyle,
        [parameter(Mandatory = $false)]
        $RowHeaderStyle,
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
        $RowsLabelOptions,
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
        $ColumnHeaderStyle,
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
        $CellStyle,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.PivotTableOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
