function Add-VSDeviceFarmDevicePoolRule {
    <#
    .SYNOPSIS
        Adds an AWS::DeviceFarm::DevicePool.Rule resource property to the template. Represents a condition for a device pool.

    .DESCRIPTION
        Adds an AWS::DeviceFarm::DevicePool.Rule resource property to the template.
Represents a condition for a device pool.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-devicepool-rule.html

    .PARAMETER Attribute
        The rule's stringified attribute. For example, specify the value as ""abc"".
The supported operators for each attribute are provided in the following list.
APPIUM_VERSION
The Appium version for the test.
Supported operators: CONTAINS
ARN
The Amazon Resource Name ARN of the device for example, arn:aws:devicefarm:us-west-2::device:12345Example.
Supported operators: EQUALS, IN, NOT_IN
AVAILABILITY
The current availability of the device. Valid values are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.
Supported operators: EQUALS
FLEET_TYPE
The fleet type. Valid values are PUBLIC or PRIVATE.
Supported operators: EQUALS
FORM_FACTOR
The device form factor. Valid values are PHONE or TABLET.
Supported operators: EQUALS, IN, NOT_IN
INSTANCE_ARN
The Amazon Resource Name ARN of the device instance.
Supported operators: IN, NOT_IN
INSTANCE_LABELS
The label of the device instance.
Supported operators: CONTAINS
MANUFACTURER
The device manufacturer for example, Apple.
Supported operators: EQUALS, IN, NOT_IN
MODEL
The device model, such as Apple iPad Air 2 or Google Pixel.
Supported operators: CONTAINS, EQUALS, IN, NOT_IN
OS_VERSION
The operating system version for example, 10.3.2.
Supported operators: EQUALS, GREATER_THAN, GREATER_THAN_OR_EQUALS, IN, LESS_THAN, LESS_THAN_OR_EQUALS, NOT_IN
PLATFORM
The device platform. Valid values are ANDROID or IOS.
Supported operators: EQUALS, IN, NOT_IN
REMOTE_ACCESS_ENABLED
Whether the device is enabled for remote access. Valid values are TRUE or FALSE.
Supported operators: EQUALS
REMOTE_DEBUG_ENABLED
Whether the device is enabled for remote debugging. Valid values are TRUE or FALSE.
Supported operators: EQUALS
Because remote debugging is no longer supported: https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html, this filter is ignored.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-devicepool-rule.html#cfn-devicefarm-devicepool-rule-attribute
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Operator
        Specifies how Device Farm compares the rule's attribute to the value. For the operators that are supported by each attribute, see the attribute descriptions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-devicepool-rule.html#cfn-devicefarm-devicepool-rule-operator
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Value
        The rule's value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-devicepool-rule.html#cfn-devicefarm-devicepool-rule-value
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DeviceFarm.DevicePool.Rule')]
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
        $Attribute,
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
        $Operator,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DeviceFarm.DevicePool.Rule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
