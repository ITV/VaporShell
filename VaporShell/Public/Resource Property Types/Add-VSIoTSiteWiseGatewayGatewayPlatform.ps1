function Add-VSIoTSiteWiseGatewayGatewayPlatform {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::Gateway.GatewayPlatform resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::Gateway.GatewayPlatform resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html

    .PARAMETER GreengrassV2
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html#cfn-iotsitewise-gateway-gatewayplatform-greengrassv2
        UpdateType: Immutable
        Type: GreengrassV2

    .PARAMETER Greengrass
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html#cfn-iotsitewise-gateway-gatewayplatform-greengrass
        UpdateType: Immutable
        Type: Greengrass

    .PARAMETER SiemensIE
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html#cfn-iotsitewise-gateway-gatewayplatform-siemensie
        UpdateType: Immutable
        Type: SiemensIE

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTSiteWise.Gateway.GatewayPlatform')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $GreengrassV2,

        [Parameter(Mandatory = $false)]
        $Greengrass,

        [Parameter(Mandatory = $false)]
        $SiemensIE

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
