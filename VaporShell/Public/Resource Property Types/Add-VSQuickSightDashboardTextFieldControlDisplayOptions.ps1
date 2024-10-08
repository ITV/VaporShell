function Add-VSQuickSightDashboardTextFieldControlDisplayOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.TextFieldControlDisplayOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.TextFieldControlDisplayOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textfieldcontroldisplayoptions.html

    .PARAMETER TitleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textfieldcontroldisplayoptions.html#cfn-quicksight-dashboard-textfieldcontroldisplayoptions-titleoptions
        UpdateType: Mutable
        Type: LabelOptions

    .PARAMETER PlaceholderOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textfieldcontroldisplayoptions.html#cfn-quicksight-dashboard-textfieldcontroldisplayoptions-placeholderoptions
        UpdateType: Mutable
        Type: TextControlPlaceholderOptions

    .PARAMETER InfoIconLabelOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-textfieldcontroldisplayoptions.html#cfn-quicksight-dashboard-textfieldcontroldisplayoptions-infoiconlabeloptions
        UpdateType: Mutable
        Type: SheetControlInfoIconLabelOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.TextFieldControlDisplayOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TitleOptions,
        [parameter(Mandatory = $false)]
        $PlaceholderOptions,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.TextFieldControlDisplayOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
