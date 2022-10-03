function Add-VSIoTWirelessTaskDefinitionLoRaWANUpdateGatewayTaskEntry {
    <#
    .SYNOPSIS
        Adds an AWS::IoTWireless::TaskDefinition.LoRaWANUpdateGatewayTaskEntry resource property to the template. LoRaWANUpdateGatewayTaskEntry object.

    .DESCRIPTION
        Adds an AWS::IoTWireless::TaskDefinition.LoRaWANUpdateGatewayTaskEntry resource property to the template.
LoRaWANUpdateGatewayTaskEntry object.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawanupdategatewaytaskentry.html

    .PARAMETER CurrentVersion
        The version of the gateways that should receive the update.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawanupdategatewaytaskentry.html#cfn-iotwireless-taskdefinition-lorawanupdategatewaytaskentry-currentversion
        UpdateType: Mutable
        Type: LoRaWANGatewayVersion

    .PARAMETER UpdateVersion
        The firmware version to update the gateway to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawanupdategatewaytaskentry.html#cfn-iotwireless-taskdefinition-lorawanupdategatewaytaskentry-updateversion
        UpdateType: Mutable
        Type: LoRaWANGatewayVersion

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTWireless.TaskDefinition.LoRaWANUpdateGatewayTaskEntry')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CurrentVersion,
        [parameter(Mandatory = $false)]
        $UpdateVersion
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTWireless.TaskDefinition.LoRaWANUpdateGatewayTaskEntry'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
