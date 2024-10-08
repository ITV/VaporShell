function Add-VSQuickSightDashboardDefaultFilterControlOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DefaultFilterControlOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DefaultFilterControlOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html

    .PARAMETER DefaultSliderOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html#cfn-quicksight-dashboard-defaultfiltercontroloptions-defaultslideroptions
        UpdateType: Mutable
        Type: DefaultSliderControlOptions

    .PARAMETER DefaultRelativeDateTimeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html#cfn-quicksight-dashboard-defaultfiltercontroloptions-defaultrelativedatetimeoptions
        UpdateType: Mutable
        Type: DefaultRelativeDateTimeControlOptions

    .PARAMETER DefaultTextFieldOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html#cfn-quicksight-dashboard-defaultfiltercontroloptions-defaulttextfieldoptions
        UpdateType: Mutable
        Type: DefaultTextFieldControlOptions

    .PARAMETER DefaultTextAreaOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html#cfn-quicksight-dashboard-defaultfiltercontroloptions-defaulttextareaoptions
        UpdateType: Mutable
        Type: DefaultTextAreaControlOptions

    .PARAMETER DefaultDropdownOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html#cfn-quicksight-dashboard-defaultfiltercontroloptions-defaultdropdownoptions
        UpdateType: Mutable
        Type: DefaultFilterDropDownControlOptions

    .PARAMETER DefaultDateTimePickerOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html#cfn-quicksight-dashboard-defaultfiltercontroloptions-defaultdatetimepickeroptions
        UpdateType: Mutable
        Type: DefaultDateTimePickerControlOptions

    .PARAMETER DefaultListOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfiltercontroloptions.html#cfn-quicksight-dashboard-defaultfiltercontroloptions-defaultlistoptions
        UpdateType: Mutable
        Type: DefaultFilterListControlOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DefaultFilterControlOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DefaultSliderOptions,
        [parameter(Mandatory = $false)]
        $DefaultRelativeDateTimeOptions,
        [parameter(Mandatory = $false)]
        $DefaultTextFieldOptions,
        [parameter(Mandatory = $false)]
        $DefaultTextAreaOptions,
        [parameter(Mandatory = $false)]
        $DefaultDropdownOptions,
        [parameter(Mandatory = $false)]
        $DefaultDateTimePickerOptions,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.DefaultFilterControlOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
