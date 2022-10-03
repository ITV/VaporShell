function Add-VSIoTSiteWiseGatewayGreengrassV2 {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::Gateway.GreengrassV2 resource property to the template. Contains details for a gateway that runs on AWS IoT Greengrass V2. To create a gateway that runs on AWS IoT Greengrass V2, you must deploy the IoT SiteWise Edge component to your gateway device. Your Greengrass device role: https://docs.aws.amazon.com/greengrass/v2/developerguide/device-service-role.html must use the AWSIoTSiteWiseEdgeAccess policy. For more information, see Using AWS IoT SiteWise at the edge: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/sw-gateways.html in the * AWS IoT SiteWise User Guide*.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::Gateway.GreengrassV2 resource property to the template.
Contains details for a gateway that runs on AWS IoT Greengrass V2. To create a gateway that runs on AWS IoT Greengrass V2, you must deploy the IoT SiteWise Edge component to your gateway device. Your Greengrass device role: https://docs.aws.amazon.com/greengrass/v2/developerguide/device-service-role.html must use the AWSIoTSiteWiseEdgeAccess policy. For more information, see Using AWS IoT SiteWise at the edge: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/sw-gateways.html in the * AWS IoT SiteWise User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-greengrassv2.html

    .PARAMETER CoreDeviceThingName
        The name of the AWS IoT thing for your AWS IoT Greengrass V2 core device.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-greengrassv2.html#cfn-iotsitewise-gateway-greengrassv2-coredevicethingname
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.Gateway.GreengrassV2')]
    [cmdletbinding()]
    Param
    (
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
        $CoreDeviceThingName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.Gateway.GreengrassV2'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
