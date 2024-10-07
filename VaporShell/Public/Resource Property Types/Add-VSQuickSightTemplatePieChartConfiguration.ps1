function Add-VSQuickSightTemplatePieChartConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.PieChartConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.PieChartConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: PieChartSortConfiguration

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER DataLabels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-datalabels
        UpdateType: Mutable
        Type: DataLabelOptions

    .PARAMETER ContributionAnalysisDefaults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-contributionanalysisdefaults
        UpdateType: Mutable
        Type: List
        ItemType: ContributionAnalysisDefault
        DuplicatesAllowed: True

    .PARAMETER CategoryLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-categorylabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-fieldwells
        UpdateType: Mutable
        Type: PieChartFieldWells

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER DonutOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-donutoptions
        UpdateType: Mutable
        Type: DonutOptions

    .PARAMETER SmallMultiplesOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-smallmultiplesoptions
        UpdateType: Mutable
        Type: SmallMultiplesOptions

    .PARAMETER ValueLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-valuelabeloptions
        UpdateType: Mutable
        Type: ChartAxisLabelOptions

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartconfiguration.html#cfn-quicksight-template-piechartconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.PieChartConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SortConfiguration,
        [parameter(Mandatory = $false)]
        $Legend,
        [parameter(Mandatory = $false)]
        $DataLabels,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.ContributionAnalysisDefault"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ContributionAnalysisDefaults,
        [parameter(Mandatory = $false)]
        $CategoryLabelOptions,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $Tooltip,
        [parameter(Mandatory = $false)]
        $DonutOptions,
        [parameter(Mandatory = $false)]
        $SmallMultiplesOptions,
        [parameter(Mandatory = $false)]
        $ValueLabelOptions,
        [parameter(Mandatory = $false)]
        $VisualPalette
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.PieChartConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
