function Add-VSIoTWirelessTaskDefinitionLoRaWANUpdateGatewayTaskEntry {
    <#
    .SYNOPSIS
        Adds an AWS::IoTWireless::TaskDefinition.LoRaWANUpdateGatewayTaskEntry resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTWireless::TaskDefinition.LoRaWANUpdateGatewayTaskEntry resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawanupdategatewaytaskentry.html

    .PARAMETER UpdateVersion
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawanupdategatewaytaskentry.html#cfn-iotwireless-taskdefinition-lorawanupdategatewaytaskentry-updateversion
        UpdateType: Mutable
        Type: LoRaWANGatewayVersion

    .PARAMETER CurrentVersion
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-lorawanupdategatewaytaskentry.html#cfn-iotwireless-taskdefinition-lorawanupdategatewaytaskentry-currentversion
        UpdateType: Mutable
        Type: LoRaWANGatewayVersion

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTWireless.TaskDefinition.LoRaWANUpdateGatewayTaskEntry')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $UpdateVersion,

        [Parameter(Mandatory = $false)]
        $CurrentVersion

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
