function Add-VSQuickSightTemplateListControlDisplayOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.ListControlDisplayOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.ListControlDisplayOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontroldisplayoptions.html

    .PARAMETER TitleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontroldisplayoptions.html#cfn-quicksight-template-listcontroldisplayoptions-titleoptions
        UpdateType: Mutable
        Type: LabelOptions

    .PARAMETER SearchOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontroldisplayoptions.html#cfn-quicksight-template-listcontroldisplayoptions-searchoptions
        UpdateType: Mutable
        Type: ListControlSearchOptions

    .PARAMETER SelectAllOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontroldisplayoptions.html#cfn-quicksight-template-listcontroldisplayoptions-selectalloptions
        UpdateType: Mutable
        Type: ListControlSelectAllOptions

    .PARAMETER InfoIconLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-listcontroldisplayoptions.html#cfn-quicksight-template-listcontroldisplayoptions-infoiconlabeloptions
        UpdateType: Mutable
        Type: SheetControlInfoIconLabelOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.ListControlDisplayOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TitleOptions,

        [Parameter(Mandatory = $false)]
        $SearchOptions,

        [Parameter(Mandatory = $false)]
        $SelectAllOptions,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.ListControlDisplayOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
