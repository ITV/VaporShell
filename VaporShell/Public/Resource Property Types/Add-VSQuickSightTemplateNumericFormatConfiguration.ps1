function Add-VSQuickSightTemplateNumericFormatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.NumericFormatConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.NumericFormatConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numericformatconfiguration.html

    .PARAMETER NumberDisplayFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numericformatconfiguration.html#cfn-quicksight-template-numericformatconfiguration-numberdisplayformatconfiguration
        UpdateType: Mutable
        Type: NumberDisplayFormatConfiguration

    .PARAMETER CurrencyDisplayFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numericformatconfiguration.html#cfn-quicksight-template-numericformatconfiguration-currencydisplayformatconfiguration
        UpdateType: Mutable
        Type: CurrencyDisplayFormatConfiguration

    .PARAMETER PercentageDisplayFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numericformatconfiguration.html#cfn-quicksight-template-numericformatconfiguration-percentagedisplayformatconfiguration
        UpdateType: Mutable
        Type: PercentageDisplayFormatConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.NumericFormatConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NumberDisplayFormatConfiguration,
        [parameter(Mandatory = $false)]
        $CurrencyDisplayFormatConfiguration,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.NumericFormatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
