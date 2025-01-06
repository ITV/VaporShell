function Add-VSQuickSightAnalysisGeospatialDataSourceItem {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialDataSourceItem resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialDataSourceItem resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialdatasourceitem.html

    .PARAMETER StaticFileDataSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialdatasourceitem.html#cfn-quicksight-analysis-geospatialdatasourceitem-staticfiledatasource
        UpdateType: Mutable
        Type: GeospatialStaticFileSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialDataSourceItem')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $StaticFileDataSource

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialDataSourceItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
