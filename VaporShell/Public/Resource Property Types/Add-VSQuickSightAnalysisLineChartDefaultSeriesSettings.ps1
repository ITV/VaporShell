function Add-VSQuickSightAnalysisLineChartDefaultSeriesSettings {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.LineChartDefaultSeriesSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.LineChartDefaultSeriesSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartdefaultseriessettings.html

    .PARAMETER LineStyleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartdefaultseriessettings.html#cfn-quicksight-analysis-linechartdefaultseriessettings-linestylesettings
        UpdateType: Mutable
        Type: LineChartLineStyleSettings

    .PARAMETER AxisBinding
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartdefaultseriessettings.html#cfn-quicksight-analysis-linechartdefaultseriessettings-axisbinding
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MarkerStyleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartdefaultseriessettings.html#cfn-quicksight-analysis-linechartdefaultseriessettings-markerstylesettings
        UpdateType: Mutable
        Type: LineChartMarkerStyleSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.LineChartDefaultSeriesSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $LineStyleSettings,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AxisBinding,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.LineChartDefaultSeriesSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
