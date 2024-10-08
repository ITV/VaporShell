function Add-VSAppMeshGatewayRouteGrpcGatewayRoute {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::GatewayRoute.GrpcGatewayRoute resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppMesh::GatewayRoute.GrpcGatewayRoute resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html

    .PARAMETER Action
        Type: GrpcGatewayRouteAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html#cfn-appmesh-gatewayroute-grpcgatewayroute-action
        UpdateType: Mutable

    .PARAMETER Match
        Type: GrpcGatewayRouteMatch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html#cfn-appmesh-gatewayroute-grpcgatewayroute-match
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppMesh.GatewayRoute.GrpcGatewayRoute')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Action,

        [Parameter(Mandatory = $true)]
        $Match

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.GatewayRoute.GrpcGatewayRoute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
