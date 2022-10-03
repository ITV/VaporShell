function Add-VSIoTEventsDetectorModelAssetPropertyTimestamp {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.AssetPropertyTimestamp resource property to the template. A structure that contains timestamp information. For more information, see TimeInNanos: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html in the * AWS IoT SiteWise API Reference*.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.AssetPropertyTimestamp resource property to the template.
A structure that contains timestamp information. For more information, see TimeInNanos: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html in the * AWS IoT SiteWise API Reference*.

You must use expressions for all parameters in AssetPropertyTimestamp. The expressions accept literals, operators, functions, references, and substitution templates.

**Examples**

+ For literal values, the expressions must contain single quotes. For example, the value for the timeInSeconds parameter can be '1586400675'.

+ For references, you must specify either variables or input values. For example, the value for the offsetInNanos parameter can be $variable.time.

+ For a substitution template, you must use ${}, and the template must be in single quotes. A substitution template can also contain a combination of literals, operators, functions, references, and substitution templates.

In the following example, the value for the timeInSeconds parameter uses a substitution template.

'${$input.TemperatureInput.sensorData.timestamp / 1000}'

For more information, see Expressions: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html in the * AWS IoT Events Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertytimestamp.html

    .PARAMETER OffsetInNanos
        The nanosecond offset converted from timeInSeconds. The valid range is between 0-999999999.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertytimestamp.html#cfn-iotevents-detectormodel-assetpropertytimestamp-offsetinnanos
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TimeInSeconds
        The timestamp, in seconds, in the Unix epoch format. The valid range is between 1-31556889864403199.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertytimestamp.html#cfn-iotevents-detectormodel-assetpropertytimestamp-timeinseconds
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.AssetPropertyTimestamp')]
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
        $OffsetInNanos,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TimeInSeconds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.DetectorModel.AssetPropertyTimestamp'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
