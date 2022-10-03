function Add-VSQuickSightDashboardDashboardPublishOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DashboardPublishOptions resource property to the template. Dashboard publish options.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DashboardPublishOptions resource property to the template.
Dashboard publish options.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html

    .PARAMETER SheetControlsOption
        Sheet controls option.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-sheetcontrolsoption
        UpdateType: Mutable
        Type: SheetControlsOption

    .PARAMETER ExportToCSVOption
        Export to .csv option.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-exporttocsvoption
        UpdateType: Mutable
        Type: ExportToCSVOption

    .PARAMETER AdHocFilteringOption
        Ad hoc one-time filtering option.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-adhocfilteringoption
        UpdateType: Mutable
        Type: AdHocFilteringOption

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DashboardPublishOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SheetControlsOption,
        [parameter(Mandatory = $false)]
        $ExportToCSVOption,
        [parameter(Mandatory = $false)]
        $AdHocFilteringOption
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
