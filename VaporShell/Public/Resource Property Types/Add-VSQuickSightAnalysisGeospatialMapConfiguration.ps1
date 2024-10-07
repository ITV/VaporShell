function Add-VSQuickSightAnalysisGeospatialMapConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialMapConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialMapConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html#cfn-quicksight-analysis-geospatialmapconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER MapStyleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html#cfn-quicksight-analysis-geospatialmapconfiguration-mapstyleoptions
        UpdateType: Mutable
        Type: GeospatialMapStyleOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html#cfn-quicksight-analysis-geospatialmapconfiguration-fieldwells
        UpdateType: Mutable
        Type: GeospatialMapFieldWells

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html#cfn-quicksight-analysis-geospatialmapconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER WindowOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html#cfn-quicksight-analysis-geospatialmapconfiguration-windowoptions
        UpdateType: Mutable
        Type: GeospatialWindowOptions

    .PARAMETER PointStyleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html#cfn-quicksight-analysis-geospatialmapconfiguration-pointstyleoptions
        UpdateType: Mutable
        Type: GeospatialPointStyleOptions

    .PARAMETER VisualPalette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialmapconfiguration.html#cfn-quicksight-analysis-geospatialmapconfiguration-visualpalette
        UpdateType: Mutable
        Type: VisualPalette

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialMapConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Legend,
        [parameter(Mandatory = $false)]
        $MapStyleOptions,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $Tooltip,
        [parameter(Mandatory = $false)]
        $WindowOptions,
        [parameter(Mandatory = $false)]
        $PointStyleOptions,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialMapConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
