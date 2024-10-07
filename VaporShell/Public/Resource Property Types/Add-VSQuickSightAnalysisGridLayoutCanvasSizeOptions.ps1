function Add-VSQuickSightAnalysisGridLayoutCanvasSizeOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GridLayoutCanvasSizeOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GridLayoutCanvasSizeOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gridlayoutcanvassizeoptions.html

    .PARAMETER ScreenCanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gridlayoutcanvassizeoptions.html#cfn-quicksight-analysis-gridlayoutcanvassizeoptions-screencanvassizeoptions
        UpdateType: Mutable
        Type: GridLayoutScreenCanvasSizeOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GridLayoutCanvasSizeOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ScreenCanvasSizeOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GridLayoutCanvasSizeOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
