function Add-VSAppMeshGatewayRouteHttpGatewayRouteRewrite {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::GatewayRoute.HttpGatewayRouteRewrite resource property to the template. An object representing the gateway route to rewrite.

    .DESCRIPTION
        Adds an AWS::AppMesh::GatewayRoute.HttpGatewayRouteRewrite resource property to the template.
An object representing the gateway route to rewrite.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html

    .PARAMETER Path
        The path to rewrite.

        Type: HttpGatewayRoutePathRewrite
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html#cfn-appmesh-gatewayroute-httpgatewayrouterewrite-path
        UpdateType: Mutable

    .PARAMETER Hostname
        The host name to rewrite.

        Type: GatewayRouteHostnameRewrite
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html#cfn-appmesh-gatewayroute-httpgatewayrouterewrite-hostname
        UpdateType: Mutable

    .PARAMETER Prefix
        The specified beginning characters to rewrite.

        Type: HttpGatewayRoutePrefixRewrite
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouterewrite.html#cfn-appmesh-gatewayroute-httpgatewayrouterewrite-prefix
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.GatewayRoute.HttpGatewayRouteRewrite')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Path,
        [parameter(Mandatory = $false)]
        $Hostname,
        [parameter(Mandatory = $false)]
        $Prefix
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.GatewayRoute.HttpGatewayRouteRewrite'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
