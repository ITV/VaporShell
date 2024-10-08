function Add-VSQuickSightDashboardGeospatialMapConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.GeospatialMapConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.GeospatialMapConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER MapStyleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-mapstyleoptions
        UpdateType: Mutable
        Type: GeospatialMapStyleOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-fieldwells
        UpdateType: Mutable
        Type: GeospatialMapFieldWells

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER WindowOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-windowoptions
        UpdateType: Mutable
        Type: GeospatialWindowOptions

    .PARAMETER PointStyleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-pointstyleoptions
        UpdateType: Mutable
        Type: GeospatialPointStyleOptions

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapconfiguration.html#cfn-quicksight-dashboard-geospatialmapconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.GeospatialMapConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Legend,

        [Parameter(Mandatory = $false)]
        $MapStyleOptions,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $Tooltip,

        [Parameter(Mandatory = $false)]
        $WindowOptions,

        [Parameter(Mandatory = $false)]
        $PointStyleOptions,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.GeospatialMapConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
