function Add-VSQuickSightDashboardKPIComparisonValueConditionalFormatting {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.KPIComparisonValueConditionalFormatting resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.KPIComparisonValueConditionalFormatting resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpicomparisonvalueconditionalformatting.html

    .PARAMETER TextColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpicomparisonvalueconditionalformatting.html#cfn-quicksight-dashboard-kpicomparisonvalueconditionalformatting-textcolor
        UpdateType: Mutable
        Type: ConditionalFormattingColor

    .PARAMETER Icon
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpicomparisonvalueconditionalformatting.html#cfn-quicksight-dashboard-kpicomparisonvalueconditionalformatting-icon
        UpdateType: Mutable
        Type: ConditionalFormattingIcon

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.KPIComparisonValueConditionalFormatting')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.KPIComparisonValueConditionalFormatting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
