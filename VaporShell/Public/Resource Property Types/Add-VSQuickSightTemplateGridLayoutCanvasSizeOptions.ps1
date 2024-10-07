function Add-VSQuickSightTemplateGridLayoutCanvasSizeOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.GridLayoutCanvasSizeOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.GridLayoutCanvasSizeOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gridlayoutcanvassizeoptions.html

    .PARAMETER ScreenCanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gridlayoutcanvassizeoptions.html#cfn-quicksight-template-gridlayoutcanvassizeoptions-screencanvassizeoptions
        UpdateType: Mutable
        Type: GridLayoutScreenCanvasSizeOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.GridLayoutCanvasSizeOptions')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.GridLayoutCanvasSizeOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
