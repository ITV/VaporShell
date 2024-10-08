function Add-VSQuickSightAnalysisKPIOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.KPIOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.KPIOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html

    .PARAMETER SecondaryValueFontConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-secondaryvaluefontconfiguration
        UpdateType: Mutable
        Type: FontConfiguration

    .PARAMETER VisualLayoutOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-visuallayoutoptions
        UpdateType: Mutable
        Type: KPIVisualLayoutOptions

    .PARAMETER TrendArrows
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-trendarrows
        UpdateType: Mutable
        Type: TrendArrowOptions

    .PARAMETER SecondaryValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-secondaryvalue
        UpdateType: Mutable
        Type: SecondaryValueOptions

    .PARAMETER Comparison
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-comparison
        UpdateType: Mutable
        Type: ComparisonConfiguration

    .PARAMETER PrimaryValueDisplayType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-primaryvaluedisplaytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ProgressBar
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-progressbar
        UpdateType: Mutable
        Type: ProgressBarOptions

    .PARAMETER PrimaryValueFontConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-primaryvaluefontconfiguration
        UpdateType: Mutable
        Type: FontConfiguration

    .PARAMETER Sparkline
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpioptions.html#cfn-quicksight-analysis-kpioptions-sparkline
        UpdateType: Mutable
        Type: KPISparklineOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.KPIOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecondaryValueFontConfiguration,
        [parameter(Mandatory = $false)]
        $VisualLayoutOptions,
        [parameter(Mandatory = $false)]
        $TrendArrows,
        [parameter(Mandatory = $false)]
        $SecondaryValue,
        [parameter(Mandatory = $false)]
        $Comparison,
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
        $PrimaryValueDisplayType,
        [parameter(Mandatory = $false)]
        $ProgressBar,
        [parameter(Mandatory = $false)]
        $PrimaryValueFontConfiguration,
        [parameter(Mandatory = $false)]
        $Sparkline
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.KPIOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
