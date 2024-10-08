function Add-VSQuickSightTemplateKPIOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.KPIOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.KPIOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html

    .PARAMETER SecondaryValueFontConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-secondaryvaluefontconfiguration
        UpdateType: Mutable
        Type: FontConfiguration

    .PARAMETER VisualLayoutOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-visuallayoutoptions
        UpdateType: Mutable
        Type: KPIVisualLayoutOptions

    .PARAMETER TrendArrows
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-trendarrows
        UpdateType: Mutable
        Type: TrendArrowOptions

    .PARAMETER SecondaryValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-secondaryvalue
        UpdateType: Mutable
        Type: SecondaryValueOptions

    .PARAMETER Comparison
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-comparison
        UpdateType: Mutable
        Type: ComparisonConfiguration

    .PARAMETER PrimaryValueDisplayType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-primaryvaluedisplaytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ProgressBar
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-progressbar
        UpdateType: Mutable
        Type: ProgressBarOptions

    .PARAMETER PrimaryValueFontConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-primaryvaluefontconfiguration
        UpdateType: Mutable
        Type: FontConfiguration

    .PARAMETER Sparkline
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpioptions.html#cfn-quicksight-template-kpioptions-sparkline
        UpdateType: Mutable
        Type: KPISparklineOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.KPIOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SecondaryValueFontConfiguration,

        [Parameter(Mandatory = $false)]
        $VisualLayoutOptions,

        [Parameter(Mandatory = $false)]
        $TrendArrows,

        [Parameter(Mandatory = $false)]
        $SecondaryValue,

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
        $ProgressBar,

        [Parameter(Mandatory = $false)]
        $PrimaryValueFontConfiguration,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.KPIOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
