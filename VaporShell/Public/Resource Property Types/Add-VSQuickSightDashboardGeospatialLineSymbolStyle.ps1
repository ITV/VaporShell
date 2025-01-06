function Add-VSQuickSightDashboardGeospatialLineSymbolStyle {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.GeospatialLineSymbolStyle resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.GeospatialLineSymbolStyle resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallinesymbolstyle.html

    .PARAMETER FillColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallinesymbolstyle.html#cfn-quicksight-dashboard-geospatiallinesymbolstyle-fillcolor
        UpdateType: Mutable
        Type: GeospatialColor

    .PARAMETER LineWidth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallinesymbolstyle.html#cfn-quicksight-dashboard-geospatiallinesymbolstyle-linewidth
        UpdateType: Mutable
        Type: GeospatialLineWidth

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.GeospatialLineSymbolStyle')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FillColor,

        [Parameter(Mandatory = $false)]
        $LineWidth

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.GeospatialLineSymbolStyle'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
