function Add-VSQuickSightAnalysisSectionBasedLayoutCanvasSizeOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.SectionBasedLayoutCanvasSizeOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.SectionBasedLayoutCanvasSizeOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sectionbasedlayoutcanvassizeoptions.html

    .PARAMETER PaperCanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sectionbasedlayoutcanvassizeoptions.html#cfn-quicksight-analysis-sectionbasedlayoutcanvassizeoptions-papercanvassizeoptions
        UpdateType: Mutable
        Type: SectionBasedLayoutPaperCanvasSizeOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.SectionBasedLayoutCanvasSizeOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PaperCanvasSizeOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.SectionBasedLayoutCanvasSizeOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
