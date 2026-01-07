function Add-VSQuickSightAnalysisBarChartDefaultSeriesSettings {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.BarChartDefaultSeriesSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.BarChartDefaultSeriesSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartdefaultseriessettings.html

    .PARAMETER BorderSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartdefaultseriessettings.html#cfn-quicksight-analysis-barchartdefaultseriessettings-bordersettings
        UpdateType: Mutable
        Type: BorderSettings

    .PARAMETER DecalSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartdefaultseriessettings.html#cfn-quicksight-analysis-barchartdefaultseriessettings-decalsettings
        UpdateType: Mutable
        Type: DecalSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.BarChartDefaultSeriesSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $BorderSettings,

        [Parameter(Mandatory = $false)]
        $DecalSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.BarChartDefaultSeriesSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
