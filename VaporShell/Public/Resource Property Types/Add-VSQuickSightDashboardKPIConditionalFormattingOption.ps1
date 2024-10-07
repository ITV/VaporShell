function Add-VSQuickSightDashboardKPIConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.KPIConditionalFormattingOption resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.KPIConditionalFormattingOption resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html

    .PARAMETER PrimaryValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html#cfn-quicksight-dashboard-kpiconditionalformattingoption-primaryvalue
        UpdateType: Mutable
        Type: KPIPrimaryValueConditionalFormatting

    .PARAMETER ProgressBar
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-kpiconditionalformattingoption.html#cfn-quicksight-dashboard-kpiconditionalformattingoption-progressbar
        UpdateType: Mutable
        Type: KPIProgressBarConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.KPIConditionalFormattingOption')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PrimaryValue,
        [parameter(Mandatory = $false)]
        $ProgressBar
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.KPIConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
