function Add-VSQuickSightDashboardGaugeChartArcConditionalFormatting {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.GaugeChartArcConditionalFormatting resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.GaugeChartArcConditionalFormatting resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gaugechartarcconditionalformatting.html

    .PARAMETER ForegroundColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-gaugechartarcconditionalformatting.html#cfn-quicksight-dashboard-gaugechartarcconditionalformatting-foregroundcolor
        UpdateType: Mutable
        Type: ConditionalFormattingColor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.GaugeChartArcConditionalFormatting')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ForegroundColor

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.GaugeChartArcConditionalFormatting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
