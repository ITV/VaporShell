function Add-VSIoTSiteWiseGatewayGatewayPlatform {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::Gateway.GatewayPlatform resource property to the template. Contains a gateway's platform information.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::Gateway.GatewayPlatform resource property to the template.
Contains a gateway's platform information.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html

    .PARAMETER Greengrass
        A gateway that runs on AWS IoT Greengrass.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html#cfn-iotsitewise-gateway-gatewayplatform-greengrass
        UpdateType: Immutable
        Type: Greengrass

    .PARAMETER GreengrassV2
        A gateway that runs on AWS IoT Greengrass V2.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html#cfn-iotsitewise-gateway-gatewayplatform-greengrassv2
        UpdateType: Immutable
        Type: GreengrassV2

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.Gateway.GatewayPlatform')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Greengrass,
        [parameter(Mandatory = $false)]
        $GreengrassV2
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.Gateway.GatewayPlatform'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
