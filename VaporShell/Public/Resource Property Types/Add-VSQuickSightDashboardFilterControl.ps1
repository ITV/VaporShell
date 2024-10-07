function Add-VSQuickSightDashboardFilterControl {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.FilterControl resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.FilterControl resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html

    .PARAMETER Slider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html#cfn-quicksight-dashboard-filtercontrol-slider
        UpdateType: Mutable
        Type: FilterSliderControl

    .PARAMETER TextArea
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html#cfn-quicksight-dashboard-filtercontrol-textarea
        UpdateType: Mutable
        Type: FilterTextAreaControl

    .PARAMETER Dropdown
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html#cfn-quicksight-dashboard-filtercontrol-dropdown
        UpdateType: Mutable
        Type: FilterDropDownControl

    .PARAMETER TextField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html#cfn-quicksight-dashboard-filtercontrol-textfield
        UpdateType: Mutable
        Type: FilterTextFieldControl

    .PARAMETER List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html#cfn-quicksight-dashboard-filtercontrol-list
        UpdateType: Mutable
        Type: FilterListControl

    .PARAMETER DateTimePicker
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html#cfn-quicksight-dashboard-filtercontrol-datetimepicker
        UpdateType: Mutable
        Type: FilterDateTimePickerControl

    .PARAMETER RelativeDateTime
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercontrol.html#cfn-quicksight-dashboard-filtercontrol-relativedatetime
        UpdateType: Mutable
        Type: FilterRelativeDateTimeControl

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.FilterControl')]
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
        $RelativeDateTime
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.FilterControl'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
