function Add-VSQuickSightTemplateRadarChartSeriesSettings {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.RadarChartSeriesSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.RadarChartSeriesSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-radarchartseriessettings.html

    .PARAMETER AreaStyleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-radarchartseriessettings.html#cfn-quicksight-template-radarchartseriessettings-areastylesettings
        UpdateType: Mutable
        Type: RadarChartAreaStyleSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.RadarChartSeriesSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AreaStyleSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.RadarChartSeriesSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
