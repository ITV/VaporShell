function Add-VSAppMeshGatewayRouteGrpcGatewayRouteRewrite {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::GatewayRoute.GrpcGatewayRouteRewrite resource property to the template. An object that represents the gateway route to rewrite.

    .DESCRIPTION
        Adds an AWS::AppMesh::GatewayRoute.GrpcGatewayRouteRewrite resource property to the template.
An object that represents the gateway route to rewrite.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouterewrite.html

    .PARAMETER Hostname
        The host name of the gateway route to rewrite.

        Type: GatewayRouteHostnameRewrite
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouterewrite.html#cfn-appmesh-gatewayroute-grpcgatewayrouterewrite-hostname
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.GatewayRoute.GrpcGatewayRouteRewrite')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Hostname
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.GatewayRoute.GrpcGatewayRouteRewrite'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
