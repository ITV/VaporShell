function Add-VSAppMeshGatewayRouteHttpGatewayRouteAction {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::GatewayRoute.HttpGatewayRouteAction resource property to the template. An object that represents the action to take if a match is determined.

    .DESCRIPTION
        Adds an AWS::AppMesh::GatewayRoute.HttpGatewayRouteAction resource property to the template.
An object that represents the action to take if a match is determined.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html

    .PARAMETER Target
        An object that represents the target that traffic is routed to when a request matches the gateway route.

        Type: GatewayRouteTarget
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html#cfn-appmesh-gatewayroute-httpgatewayrouteaction-target
        UpdateType: Mutable

    .PARAMETER Rewrite
        The gateway route action to rewrite.

        Type: HttpGatewayRouteRewrite
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html#cfn-appmesh-gatewayroute-httpgatewayrouteaction-rewrite
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.GatewayRoute.HttpGatewayRouteAction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Target,
        [parameter(Mandatory = $false)]
        $Rewrite
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.GatewayRoute.HttpGatewayRouteAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
