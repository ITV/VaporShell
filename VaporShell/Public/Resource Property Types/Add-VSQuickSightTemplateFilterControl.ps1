function Add-VSQuickSightTemplateFilterControl {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.FilterControl resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.FilterControl resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html

    .PARAMETER Slider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-slider
        UpdateType: Mutable
        Type: FilterSliderControl

    .PARAMETER TextArea
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-textarea
        UpdateType: Mutable
        Type: FilterTextAreaControl

    .PARAMETER Dropdown
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-dropdown
        UpdateType: Mutable
        Type: FilterDropDownControl

    .PARAMETER TextField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-textfield
        UpdateType: Mutable
        Type: FilterTextFieldControl

    .PARAMETER List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-list
        UpdateType: Mutable
        Type: FilterListControl

    .PARAMETER DateTimePicker
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-datetimepicker
        UpdateType: Mutable
        Type: FilterDateTimePickerControl

    .PARAMETER RelativeDateTime
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-relativedatetime
        UpdateType: Mutable
        Type: FilterRelativeDateTimeControl

    .PARAMETER CrossSheet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filtercontrol.html#cfn-quicksight-template-filtercontrol-crosssheet
        UpdateType: Mutable
        Type: FilterCrossSheetControl

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.FilterControl')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Slider,
        [parameter(Mandatory = $false)]
        $TextArea,
        [parameter(Mandatory = $false)]
        $Dropdown,
        [parameter(Mandatory = $false)]
        $TextField,
        [parameter(Mandatory = $false)]
        $List,
        [parameter(Mandatory = $false)]
        $DateTimePicker,
        [parameter(Mandatory = $false)]
        $RelativeDateTime,
        [parameter(Mandatory = $false)]
        $CrossSheet
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.FilterControl'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
