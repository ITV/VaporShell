function Add-VSQuickSightAnalysisFilterControl {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.FilterControl resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.FilterControl resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html

    .PARAMETER Slider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-slider
        UpdateType: Mutable
        Type: FilterSliderControl

    .PARAMETER TextArea
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-textarea
        UpdateType: Mutable
        Type: FilterTextAreaControl

    .PARAMETER Dropdown
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-dropdown
        UpdateType: Mutable
        Type: FilterDropDownControl

    .PARAMETER TextField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-textfield
        UpdateType: Mutable
        Type: FilterTextFieldControl

    .PARAMETER List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-list
        UpdateType: Mutable
        Type: FilterListControl

    .PARAMETER DateTimePicker
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-datetimepicker
        UpdateType: Mutable
        Type: FilterDateTimePickerControl

    .PARAMETER RelativeDateTime
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-relativedatetime
        UpdateType: Mutable
        Type: FilterRelativeDateTimeControl

    .PARAMETER CrossSheet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-crosssheet
        UpdateType: Mutable
        Type: FilterCrossSheetControl

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.FilterControl')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Slider,

        [Parameter(Mandatory = $false)]
        $TextArea,

        [Parameter(Mandatory = $false)]
        $Dropdown,

        [Parameter(Mandatory = $false)]
        $TextField,

        [Parameter(Mandatory = $false)]
        $List,

        [Parameter(Mandatory = $false)]
        $DateTimePicker,

        [Parameter(Mandatory = $false)]
        $RelativeDateTime,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.FilterControl'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
