function Add-VSQuickSightDashboardDashboardPublishOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DashboardPublishOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DashboardPublishOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html

    .PARAMETER SheetControlsOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-sheetcontrolsoption
        UpdateType: Mutable
        Type: SheetControlsOption

    .PARAMETER DataPointDrillUpDownOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datapointdrillupdownoption
        UpdateType: Mutable
        Type: DataPointDrillUpDownOption

    .PARAMETER AdHocFilteringOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-adhocfilteringoption
        UpdateType: Mutable
        Type: AdHocFilteringOption

    .PARAMETER VisualPublishOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-visualpublishoptions
        UpdateType: Mutable
        Type: DashboardVisualPublishOptions

    .PARAMETER DataStoriesSharingOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datastoriessharingoption
        UpdateType: Mutable
        Type: DataStoriesSharingOption

    .PARAMETER VisualAxisSortOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-visualaxissortoption
        UpdateType: Mutable
        Type: VisualAxisSortOption

    .PARAMETER ExportWithHiddenFieldsOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-exportwithhiddenfieldsoption
        UpdateType: Mutable
        Type: ExportWithHiddenFieldsOption

    .PARAMETER QuickSuiteActionsOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-quicksuiteactionsoption
        UpdateType: Mutable
        Type: QuickSuiteActionsOption

    .PARAMETER ExecutiveSummaryOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-executivesummaryoption
        UpdateType: Mutable
        Type: ExecutiveSummaryOption

    .PARAMETER ExportToCSVOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-exporttocsvoption
        UpdateType: Mutable
        Type: ExportToCSVOption

    .PARAMETER DataPointMenuLabelOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datapointmenulabeloption
        UpdateType: Mutable
        Type: DataPointMenuLabelOption

    .PARAMETER VisualMenuOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-visualmenuoption
        UpdateType: Mutable
        Type: VisualMenuOption

    .PARAMETER DataPointTooltipOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datapointtooltipoption
        UpdateType: Mutable
        Type: DataPointTooltipOption

    .PARAMETER DataQAEnabledOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-dataqaenabledoption
        UpdateType: Mutable
        Type: DataQAEnabledOption

    .PARAMETER SheetLayoutElementMaximizationOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-sheetlayoutelementmaximizationoption
        UpdateType: Mutable
        Type: SheetLayoutElementMaximizationOption

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DashboardPublishOptions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SheetControlsOption,

        [Parameter(Mandatory = $false)]
        $DataPointDrillUpDownOption,

        [Parameter(Mandatory = $false)]
        $AdHocFilteringOption,

        [Parameter(Mandatory = $false)]
        $VisualPublishOptions,

        [Parameter(Mandatory = $false)]
        $DataStoriesSharingOption,

        [Parameter(Mandatory = $false)]
        $VisualAxisSortOption,

        [Parameter(Mandatory = $false)]
        $ExportWithHiddenFieldsOption,

        [Parameter(Mandatory = $false)]
        $QuickSuiteActionsOption,

        [Parameter(Mandatory = $false)]
        $ExecutiveSummaryOption,

        [Parameter(Mandatory = $false)]
        $ExportToCSVOption,

        [Parameter(Mandatory = $false)]
        $DataPointMenuLabelOption,

        [Parameter(Mandatory = $false)]
        $VisualMenuOption,

        [Parameter(Mandatory = $false)]
        $DataPointTooltipOption,

        [Parameter(Mandatory = $false)]
        $DataQAEnabledOption,

        [Parameter(Mandatory = $false)]
        $SheetLayoutElementMaximizationOption

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.DashboardPublishOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
