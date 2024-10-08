function Add-VSQuickSightDashboardSectionBasedLayoutCanvasSizeOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.SectionBasedLayoutCanvasSizeOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.SectionBasedLayoutCanvasSizeOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionbasedlayoutcanvassizeoptions.html

    .PARAMETER PaperCanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionbasedlayoutcanvassizeoptions.html#cfn-quicksight-dashboard-sectionbasedlayoutcanvassizeoptions-papercanvassizeoptions
        UpdateType: Mutable
        Type: SectionBasedLayoutPaperCanvasSizeOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.SectionBasedLayoutCanvasSizeOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.SectionBasedLayoutCanvasSizeOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
