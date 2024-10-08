function Add-VSQuickSightTemplateDefaultFilterControlOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DefaultFilterControlOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DefaultFilterControlOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html

    .PARAMETER DefaultSliderOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html#cfn-quicksight-template-defaultfiltercontroloptions-defaultslideroptions
        UpdateType: Mutable
        Type: DefaultSliderControlOptions

    .PARAMETER DefaultRelativeDateTimeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html#cfn-quicksight-template-defaultfiltercontroloptions-defaultrelativedatetimeoptions
        UpdateType: Mutable
        Type: DefaultRelativeDateTimeControlOptions

    .PARAMETER DefaultTextFieldOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html#cfn-quicksight-template-defaultfiltercontroloptions-defaulttextfieldoptions
        UpdateType: Mutable
        Type: DefaultTextFieldControlOptions

    .PARAMETER DefaultTextAreaOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html#cfn-quicksight-template-defaultfiltercontroloptions-defaulttextareaoptions
        UpdateType: Mutable
        Type: DefaultTextAreaControlOptions

    .PARAMETER DefaultDropdownOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html#cfn-quicksight-template-defaultfiltercontroloptions-defaultdropdownoptions
        UpdateType: Mutable
        Type: DefaultFilterDropDownControlOptions

    .PARAMETER DefaultDateTimePickerOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html#cfn-quicksight-template-defaultfiltercontroloptions-defaultdatetimepickeroptions
        UpdateType: Mutable
        Type: DefaultDateTimePickerControlOptions

    .PARAMETER DefaultListOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontroloptions.html#cfn-quicksight-template-defaultfiltercontroloptions-defaultlistoptions
        UpdateType: Mutable
        Type: DefaultFilterListControlOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DefaultFilterControlOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DefaultSliderOptions,

        [Parameter(Mandatory = $false)]
        $DefaultRelativeDateTimeOptions,

        [Parameter(Mandatory = $false)]
        $DefaultTextFieldOptions,

        [Parameter(Mandatory = $false)]
        $DefaultTextAreaOptions,

        [Parameter(Mandatory = $false)]
        $DefaultDropdownOptions,

        [Parameter(Mandatory = $false)]
        $DefaultDateTimePickerOptions,

        [Parameter(Mandatory = $false)]
        $DefaultListOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DefaultFilterControlOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
