function Add-VSQuickSightAnalysisDefaultSectionBasedLayoutConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.DefaultSectionBasedLayoutConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.DefaultSectionBasedLayoutConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultsectionbasedlayoutconfiguration.html

    .PARAMETER CanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultsectionbasedlayoutconfiguration.html#cfn-quicksight-analysis-defaultsectionbasedlayoutconfiguration-canvassizeoptions
        UpdateType: Mutable
        Type: SectionBasedLayoutCanvasSizeOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.DefaultSectionBasedLayoutConfiguration')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.DefaultSectionBasedLayoutConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
