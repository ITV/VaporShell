function Add-VSQuickSightDashboardComparisonFormatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ComparisonFormatConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ComparisonFormatConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-comparisonformatconfiguration.html

    .PARAMETER NumberDisplayFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-comparisonformatconfiguration.html#cfn-quicksight-dashboard-comparisonformatconfiguration-numberdisplayformatconfiguration
        UpdateType: Mutable
        Type: NumberDisplayFormatConfiguration

    .PARAMETER PercentageDisplayFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-comparisonformatconfiguration.html#cfn-quicksight-dashboard-comparisonformatconfiguration-percentagedisplayformatconfiguration
        UpdateType: Mutable
        Type: PercentageDisplayFormatConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ComparisonFormatConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NumberDisplayFormatConfiguration,

        [Parameter(Mandatory = $false)]
        $PercentageDisplayFormatConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ComparisonFormatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
