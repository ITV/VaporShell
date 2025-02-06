function Add-VSQuickSightAnalysisGeospatialLineSymbolStyle {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialLineSymbolStyle resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialLineSymbolStyle resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinesymbolstyle.html

    .PARAMETER FillColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinesymbolstyle.html#cfn-quicksight-analysis-geospatiallinesymbolstyle-fillcolor
        UpdateType: Mutable
        Type: GeospatialColor

    .PARAMETER LineWidth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinesymbolstyle.html#cfn-quicksight-analysis-geospatiallinesymbolstyle-linewidth
        UpdateType: Mutable
        Type: GeospatialLineWidth

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialLineSymbolStyle')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialLineSymbolStyle'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
