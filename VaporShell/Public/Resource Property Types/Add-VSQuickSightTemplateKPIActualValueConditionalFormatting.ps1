function Add-VSQuickSightTemplateKPIActualValueConditionalFormatting {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.KPIActualValueConditionalFormatting resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.KPIActualValueConditionalFormatting resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiactualvalueconditionalformatting.html

    .PARAMETER TextColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiactualvalueconditionalformatting.html#cfn-quicksight-template-kpiactualvalueconditionalformatting-textcolor
        UpdateType: Mutable
        Type: ConditionalFormattingColor

    .PARAMETER Icon
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiactualvalueconditionalformatting.html#cfn-quicksight-template-kpiactualvalueconditionalformatting-icon
        UpdateType: Mutable
        Type: ConditionalFormattingIcon

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.KPIActualValueConditionalFormatting')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TextColor,
        [parameter(Mandatory = $false)]
        $Icon
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.KPIActualValueConditionalFormatting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
