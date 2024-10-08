function Add-VSQuickSightTemplateCurrencyDisplayFormatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.CurrencyDisplayFormatConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.CurrencyDisplayFormatConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html

    .PARAMETER NegativeValueConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-negativevalueconfiguration
        UpdateType: Mutable
        Type: NegativeValueConfiguration

    .PARAMETER DecimalPlacesConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-decimalplacesconfiguration
        UpdateType: Mutable
        Type: DecimalPlacesConfiguration

    .PARAMETER NumberScale
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-numberscale
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER NullValueFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-nullvalueformatconfiguration
        UpdateType: Mutable
        Type: NullValueFormatConfiguration

    .PARAMETER Suffix
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-suffix
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SeparatorConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-separatorconfiguration
        UpdateType: Mutable
        Type: NumericSeparatorConfiguration

    .PARAMETER Symbol
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-symbol
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Prefix
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-currencydisplayformatconfiguration.html#cfn-quicksight-template-currencydisplayformatconfiguration-prefix
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.CurrencyDisplayFormatConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NegativeValueConfiguration,

        [Parameter(Mandatory = $false)]
        $DecimalPlacesConfiguration,

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
        $NumberScale,

        [Parameter(Mandatory = $false)]
        $NullValueFormatConfiguration,

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
        $Suffix,

        [Parameter(Mandatory = $false)]
        $SeparatorConfiguration,

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
        $Symbol,

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
        $Prefix

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.CurrencyDisplayFormatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
