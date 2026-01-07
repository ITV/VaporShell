function Add-VSQuickSightDashboardComboChartDefaultSeriesSettings {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ComboChartDefaultSeriesSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ComboChartDefaultSeriesSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-combochartdefaultseriessettings.html

    .PARAMETER BorderSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-combochartdefaultseriessettings.html#cfn-quicksight-dashboard-combochartdefaultseriessettings-bordersettings
        UpdateType: Mutable
        Type: BorderSettings

    .PARAMETER DecalSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-combochartdefaultseriessettings.html#cfn-quicksight-dashboard-combochartdefaultseriessettings-decalsettings
        UpdateType: Mutable
        Type: DecalSettings

    .PARAMETER LineStyleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-combochartdefaultseriessettings.html#cfn-quicksight-dashboard-combochartdefaultseriessettings-linestylesettings
        UpdateType: Mutable
        Type: LineChartLineStyleSettings

    .PARAMETER MarkerStyleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-combochartdefaultseriessettings.html#cfn-quicksight-dashboard-combochartdefaultseriessettings-markerstylesettings
        UpdateType: Mutable
        Type: LineChartMarkerStyleSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ComboChartDefaultSeriesSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $BorderSettings,

        [Parameter(Mandatory = $false)]
        $DecalSettings,

        [Parameter(Mandatory = $false)]
        $LineStyleSettings,

        [Parameter(Mandatory = $false)]
        $MarkerStyleSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ComboChartDefaultSeriesSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
