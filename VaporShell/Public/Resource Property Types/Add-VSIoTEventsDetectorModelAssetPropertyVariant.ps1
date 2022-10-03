function Add-VSIoTEventsDetectorModelAssetPropertyVariant {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.AssetPropertyVariant resource property to the template. A structure that contains an asset property value. For more information, see Variant: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_Variant.html in the * AWS IoT SiteWise API Reference*.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.AssetPropertyVariant resource property to the template.
A structure that contains an asset property value. For more information, see Variant: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_Variant.html in the * AWS IoT SiteWise API Reference*.

You must use expressions for all parameters in AssetPropertyVariant. The expressions accept literals, operators, functions, references, and substitution templates.

**Examples**

+ For literal values, the expressions must contain single quotes. For example, the value for the integerValue parameter can be '100'.

+ For references, you must specify either variables or parameters. For example, the value for the booleanValue parameter can be $variable.offline.

+ For a substitution template, you must use ${}, and the template must be in single quotes. A substitution template can also contain a combination of literals, operators, functions, references, and substitution templates.

In the following example, the value for the doubleValue parameter uses a substitution template.

'${$input.TemperatureInput.sensorData.temperature * 6 / 5 + 32}'

For more information, see Expressions: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html in the * AWS IoT Events Developer Guide*.

You must specify one of the following value types, depending on the dataType of the specified asset property. For more information, see AssetProperty: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetProperty.html in the * AWS IoT SiteWise API Reference*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html

    .PARAMETER BooleanValue
        The asset property value is a Boolean value that must be 'TRUE' or 'FALSE'. You must use an expression, and the evaluated result should be a Boolean value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-booleanvalue
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DoubleValue
        The asset property value is a double. You must use an expression, and the evaluated result should be a double.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-doublevalue
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER IntegerValue
        The asset property value is an integer. You must use an expression, and the evaluated result should be an integer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-integervalue
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER StringValue
        The asset property value is a string. You must use an expression, and the evaluated result should be a string.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvariant.html#cfn-iotevents-detectormodel-assetpropertyvariant-stringvalue
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.AssetPropertyVariant')]
    [cmdletbinding()]
    Param
    (
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
        $BooleanValue,
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
        $DoubleValue,
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
        $IntegerValue,
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
        $StringValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.DetectorModel.AssetPropertyVariant'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
