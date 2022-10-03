function Add-VSIoTTopicRuleAssetPropertyVariant {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::TopicRule.AssetPropertyVariant resource property to the template. Contains an asset property value (of a single type.

    .DESCRIPTION
        Adds an AWS::IoT::TopicRule.AssetPropertyVariant resource property to the template.
Contains an asset property value (of a single type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html

    .PARAMETER StringValue
        Optional. The string value of the value entry. Accepts substitution templates.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-stringvalue
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DoubleValue
        Optional. A string that contains the double value of the value entry. Accepts substitution templates.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-doublevalue
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER BooleanValue
        Optional. A string that contains the boolean value true or false of the value entry. Accepts substitution templates.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-booleanvalue
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER IntegerValue
        Optional. A string that contains the integer value of the value entry. Accepts substitution templates.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertyvariant.html#cfn-iot-topicrule-assetpropertyvariant-integervalue
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.TopicRule.AssetPropertyVariant')]
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
        $StringValue,
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
        $IntegerValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.TopicRule.AssetPropertyVariant'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
