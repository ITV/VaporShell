function Add-VSIoTEventsDetectorModelAssetPropertyValue {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.AssetPropertyValue resource property to the template. A structure that contains value information. For more information, see AssetPropertyValue: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html in the * AWS IoT SiteWise API Reference*.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.AssetPropertyValue resource property to the template.
A structure that contains value information. For more information, see AssetPropertyValue: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html in the * AWS IoT SiteWise API Reference*.

You must use expressions for all parameters in AssetPropertyValue. The expressions accept literals, operators, functions, references, and substitution templates.

**Examples**

+ For literal values, the expressions must contain single quotes. For example, the value for the quality parameter can be 'GOOD'.

+ For references, you must specify either variables or input values. For example, the value for the quality parameter can be $input.TemperatureInput.sensorData.quality.

For more information, see Expressions: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html in the * AWS IoT Events Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html

    .PARAMETER Quality
        The quality of the asset property value. The value must be 'GOOD', 'BAD', or 'UNCERTAIN'.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html#cfn-iotevents-detectormodel-assetpropertyvalue-quality
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Timestamp
        The timestamp associated with the asset property value. The default is the current event time.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html#cfn-iotevents-detectormodel-assetpropertyvalue-timestamp
        UpdateType: Mutable
        Type: AssetPropertyTimestamp

    .PARAMETER Value
        The value to send to an asset property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html#cfn-iotevents-detectormodel-assetpropertyvalue-value
        UpdateType: Mutable
        Type: AssetPropertyVariant

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.AssetPropertyValue')]
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
        $Quality,
        [parameter(Mandatory = $false)]
        $Timestamp,
        [parameter(Mandatory = $true)]
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.DetectorModel.AssetPropertyValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
