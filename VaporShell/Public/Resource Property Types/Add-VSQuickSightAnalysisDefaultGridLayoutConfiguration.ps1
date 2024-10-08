function Add-VSQuickSightAnalysisDefaultGridLayoutConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.DefaultGridLayoutConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.DefaultGridLayoutConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultgridlayoutconfiguration.html

    .PARAMETER CanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultgridlayoutconfiguration.html#cfn-quicksight-analysis-defaultgridlayoutconfiguration-canvassizeoptions
        UpdateType: Mutable
        Type: GridLayoutCanvasSizeOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.DefaultGridLayoutConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $CanvasSizeOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.DefaultGridLayoutConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
