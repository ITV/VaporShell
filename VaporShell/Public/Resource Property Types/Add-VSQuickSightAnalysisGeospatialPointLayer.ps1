function Add-VSQuickSightAnalysisGeospatialPointLayer {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialPointLayer resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialPointLayer resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointlayer.html

    .PARAMETER Style
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointlayer.html#cfn-quicksight-analysis-geospatialpointlayer-style
        UpdateType: Mutable
        Type: GeospatialPointStyle

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialPointLayer')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Style

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialPointLayer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
