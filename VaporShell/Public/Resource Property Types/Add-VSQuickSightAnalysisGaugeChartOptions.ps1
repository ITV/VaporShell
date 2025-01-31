function Add-VSQuickSightAnalysisGaugeChartOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GaugeChartOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GaugeChartOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html

    .PARAMETER Arc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-arc
        UpdateType: Mutable
        Type: ArcConfiguration

    .PARAMETER Comparison
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-comparison
        UpdateType: Mutable
        Type: ComparisonConfiguration

    .PARAMETER PrimaryValueDisplayType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-primaryvaluedisplaytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ArcAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-arcaxis
        UpdateType: Mutable
        Type: ArcAxisConfiguration

    .PARAMETER PrimaryValueFontConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartoptions.html#cfn-quicksight-analysis-gaugechartoptions-primaryvaluefontconfiguration
        UpdateType: Mutable
        Type: FontConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GaugeChartOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Arc,

        [Parameter(Mandatory = $false)]
        $Comparison,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PrimaryValueDisplayType,

        [Parameter(Mandatory = $false)]
        $ArcAxis,

        [Parameter(Mandatory = $false)]
        $PrimaryValueFontConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GaugeChartOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
