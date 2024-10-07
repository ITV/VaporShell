function Add-VSQuickSightTemplateFreeFormLayoutCanvasSizeOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.FreeFormLayoutCanvasSizeOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.FreeFormLayoutCanvasSizeOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutcanvassizeoptions.html

    .PARAMETER ScreenCanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutcanvassizeoptions.html#cfn-quicksight-template-freeformlayoutcanvassizeoptions-screencanvassizeoptions
        UpdateType: Mutable
        Type: FreeFormLayoutScreenCanvasSizeOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.FreeFormLayoutCanvasSizeOptions')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.FreeFormLayoutCanvasSizeOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
