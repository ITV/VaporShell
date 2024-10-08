function Add-VSQuickSightAnalysisDropDownControlDisplayOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.DropDownControlDisplayOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.DropDownControlDisplayOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html

    .PARAMETER TitleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html#cfn-quicksight-analysis-dropdowncontroldisplayoptions-titleoptions
        UpdateType: Mutable
        Type: LabelOptions

    .PARAMETER SelectAllOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html#cfn-quicksight-analysis-dropdowncontroldisplayoptions-selectalloptions
        UpdateType: Mutable
        Type: ListControlSelectAllOptions

    .PARAMETER InfoIconLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html#cfn-quicksight-analysis-dropdowncontroldisplayoptions-infoiconlabeloptions
        UpdateType: Mutable
        Type: SheetControlInfoIconLabelOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.DropDownControlDisplayOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TitleOptions,
        [parameter(Mandatory = $false)]
        $SelectAllOptions,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.DropDownControlDisplayOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
