function Add-VSQuickSightTemplateLineChartSeriesSettings {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.LineChartSeriesSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.LineChartSeriesSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartseriessettings.html

    .PARAMETER LineStyleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartseriessettings.html#cfn-quicksight-template-linechartseriessettings-linestylesettings
        UpdateType: Mutable
        Type: LineChartLineStyleSettings

    .PARAMETER MarkerStyleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartseriessettings.html#cfn-quicksight-template-linechartseriessettings-markerstylesettings
        UpdateType: Mutable
        Type: LineChartMarkerStyleSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.LineChartSeriesSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LineStyleSettings,

        [Parameter(Mandatory = $false)]
        $MarkerStyleSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.LineChartSeriesSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
