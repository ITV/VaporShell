function Add-VSQuickSightAnalysisParameterControl {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ParameterControl resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ParameterControl resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parametercontrol.html

    .PARAMETER Slider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parametercontrol.html#cfn-quicksight-analysis-parametercontrol-slider
        UpdateType: Mutable
        Type: ParameterSliderControl

    .PARAMETER TextArea
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parametercontrol.html#cfn-quicksight-analysis-parametercontrol-textarea
        UpdateType: Mutable
        Type: ParameterTextAreaControl

    .PARAMETER Dropdown
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parametercontrol.html#cfn-quicksight-analysis-parametercontrol-dropdown
        UpdateType: Mutable
        Type: ParameterDropDownControl

    .PARAMETER TextField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parametercontrol.html#cfn-quicksight-analysis-parametercontrol-textfield
        UpdateType: Mutable
        Type: ParameterTextFieldControl

    .PARAMETER List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parametercontrol.html#cfn-quicksight-analysis-parametercontrol-list
        UpdateType: Mutable
        Type: ParameterListControl

    .PARAMETER DateTimePicker
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parametercontrol.html#cfn-quicksight-analysis-parametercontrol-datetimepicker
        UpdateType: Mutable
        Type: ParameterDateTimePickerControl

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ParameterControl')]
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
        $DateTimePicker
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ParameterControl'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
