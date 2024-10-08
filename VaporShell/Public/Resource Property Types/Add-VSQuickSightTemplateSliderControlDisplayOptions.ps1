function Add-VSQuickSightTemplateSliderControlDisplayOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.SliderControlDisplayOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.SliderControlDisplayOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-slidercontroldisplayoptions.html

    .PARAMETER TitleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-slidercontroldisplayoptions.html#cfn-quicksight-template-slidercontroldisplayoptions-titleoptions
        UpdateType: Mutable
        Type: LabelOptions

    .PARAMETER InfoIconLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-slidercontroldisplayoptions.html#cfn-quicksight-template-slidercontroldisplayoptions-infoiconlabeloptions
        UpdateType: Mutable
        Type: SheetControlInfoIconLabelOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.SliderControlDisplayOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TitleOptions,
        [parameter(Mandatory = $false)]
        $InfoIconLabelOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.SliderControlDisplayOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
