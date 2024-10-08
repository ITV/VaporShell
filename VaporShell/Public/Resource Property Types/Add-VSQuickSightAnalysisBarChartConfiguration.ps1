function Add-VSQuickSightAnalysisBarChartConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.BarChartConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.BarChartConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: BarChartSortConfiguration

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER ReferenceLines
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-referencelines
        UpdateType: Mutable
        Type: List
        ItemType: ReferenceLine
        DuplicatesAllowed: True

    .PARAMETER DataLabels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-datalabels
        UpdateType: Mutable
        Type: DataLabelOptions

    .PARAMETER ColorLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-colorlabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER CategoryLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-categorylabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER SmallMultiplesOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-smallmultiplesoptions
        UpdateType: Mutable
        Type: SmallMultiplesOptions

    .PARAMETER Orientation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-orientation
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .PARAMETER ValueLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-valuelabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER BarsArrangement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-barsarrangement
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CategoryAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-categoryaxis
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .PARAMETER ContributionAnalysisDefaults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-contributionanalysisdefaults
        UpdateType: Mutable
        Type: List
        ItemType: ContributionAnalysisDefault
        DuplicatesAllowed: True

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-fieldwells
        UpdateType: Mutable
        Type: BarChartFieldWells

    .PARAMETER ValueAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartconfiguration.html#cfn-quicksight-analysis-barchartconfiguration-valueaxis
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.BarChartConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SortConfiguration,

        [Parameter(Mandatory = $false)]
        $Legend,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.ReferenceLine"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ReferenceLines,

        [Parameter(Mandatory = $false)]
        $DataLabels,

        [Parameter(Mandatory = $false)]
        $ColorLabelOptions,

        [Parameter(Mandatory = $false)]
        $CategoryLabelOptions,

        [Parameter(Mandatory = $false)]
        $Tooltip,

        [Parameter(Mandatory = $false)]
        $SmallMultiplesOptions,

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
        $Orientation,

        [Parameter(Mandatory = $false)]
        $VisualPalette,

        [Parameter(Mandatory = $false)]
        $ValueLabelOptions,

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
        $BarsArrangement,

        [Parameter(Mandatory = $false)]
        $CategoryAxis,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.ContributionAnalysisDefault"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ContributionAnalysisDefaults,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $ValueAxis

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.BarChartConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
