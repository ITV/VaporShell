function Add-VSQuickSightAnalysisGeospatialNullDataSettings {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialNullDataSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialNullDataSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialnulldatasettings.html

    .PARAMETER SymbolStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialnulldatasettings.html#cfn-quicksight-analysis-geospatialnulldatasettings-symbolstyle
        UpdateType: Mutable
        Type: GeospatialNullSymbolStyle

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialNullDataSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $SymbolStyle

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialNullDataSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
