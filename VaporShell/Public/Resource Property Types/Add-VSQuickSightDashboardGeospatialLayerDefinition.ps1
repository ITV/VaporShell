function Add-VSQuickSightDashboardGeospatialLayerDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.GeospatialLayerDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.GeospatialLayerDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html

    .PARAMETER PointLayer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html#cfn-quicksight-dashboard-geospatiallayerdefinition-pointlayer
        UpdateType: Mutable
        Type: GeospatialPointLayer

    .PARAMETER PolygonLayer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html#cfn-quicksight-dashboard-geospatiallayerdefinition-polygonlayer
        UpdateType: Mutable
        Type: GeospatialPolygonLayer

    .PARAMETER LineLayer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html#cfn-quicksight-dashboard-geospatiallayerdefinition-linelayer
        UpdateType: Mutable
        Type: GeospatialLineLayer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.GeospatialLayerDefinition')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PointLayer,

        [Parameter(Mandatory = $false)]
        $PolygonLayer,

        [Parameter(Mandatory = $false)]
        $LineLayer

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.GeospatialLayerDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
