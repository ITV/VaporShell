function Add-VSQuickSightDashboardGeospatialCircleSymbolStyle {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.GeospatialCircleSymbolStyle resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.GeospatialCircleSymbolStyle resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcirclesymbolstyle.html

    .PARAMETER FillColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcirclesymbolstyle.html#cfn-quicksight-dashboard-geospatialcirclesymbolstyle-fillcolor
        UpdateType: Mutable
        Type: GeospatialColor

    .PARAMETER StrokeWidth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcirclesymbolstyle.html#cfn-quicksight-dashboard-geospatialcirclesymbolstyle-strokewidth
        UpdateType: Mutable
        Type: GeospatialLineWidth

    .PARAMETER StrokeColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcirclesymbolstyle.html#cfn-quicksight-dashboard-geospatialcirclesymbolstyle-strokecolor
        UpdateType: Mutable
        Type: GeospatialColor

    .PARAMETER CircleRadius
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcirclesymbolstyle.html#cfn-quicksight-dashboard-geospatialcirclesymbolstyle-circleradius
        UpdateType: Mutable
        Type: GeospatialCircleRadius

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.GeospatialCircleSymbolStyle')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FillColor,

        [Parameter(Mandatory = $false)]
        $StrokeWidth,

        [Parameter(Mandatory = $false)]
        $StrokeColor,

        [Parameter(Mandatory = $false)]
        $CircleRadius

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.GeospatialCircleSymbolStyle'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
