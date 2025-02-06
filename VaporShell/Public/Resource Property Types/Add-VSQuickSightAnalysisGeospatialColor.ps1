function Add-VSQuickSightAnalysisGeospatialColor {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialColor resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialColor resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcolor.html

    .PARAMETER Gradient
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcolor.html#cfn-quicksight-analysis-geospatialcolor-gradient
        UpdateType: Mutable
        Type: GeospatialGradientColor

    .PARAMETER Categorical
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcolor.html#cfn-quicksight-analysis-geospatialcolor-categorical
        UpdateType: Mutable
        Type: GeospatialCategoricalColor

    .PARAMETER Solid
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcolor.html#cfn-quicksight-analysis-geospatialcolor-solid
        UpdateType: Mutable
        Type: GeospatialSolidColor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialColor')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Gradient,

        [Parameter(Mandatory = $false)]
        $Categorical,

        [Parameter(Mandatory = $false)]
        $Solid

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialColor'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
