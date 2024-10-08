function Add-VSAppMeshGatewayRouteHttpGatewayRoute {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::GatewayRoute.HttpGatewayRoute resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppMesh::GatewayRoute.HttpGatewayRoute resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html

    .PARAMETER Action
        Type: HttpGatewayRouteAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html#cfn-appmesh-gatewayroute-httpgatewayroute-action
        UpdateType: Mutable

    .PARAMETER Match
        Type: HttpGatewayRouteMatch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html#cfn-appmesh-gatewayroute-httpgatewayroute-match
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppMesh.GatewayRoute.HttpGatewayRoute')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.GatewayRoute.HttpGatewayRoute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
