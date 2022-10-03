function Add-VSAppMeshVirtualNodeVirtualNodeConnectionPool {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.VirtualNodeConnectionPool resource property to the template. An object that represents the type of virtual node connection pool.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.VirtualNodeConnectionPool resource property to the template.
An object that represents the type of virtual node connection pool.

Only one protocol is used at a time and should be the same protocol as the one chosen under port mapping.

If not present the default value for maxPendingRequests is 2147483647.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodeconnectionpool.html

    .PARAMETER TCP
        An object that represents a type of connection pool.

        Type: VirtualNodeTcpConnectionPool
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodeconnectionpool.html#cfn-appmesh-virtualnode-virtualnodeconnectionpool-tcp
        UpdateType: Mutable

    .PARAMETER HTTP2
        An object that represents a type of connection pool.

        Type: VirtualNodeHttp2ConnectionPool
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodeconnectionpool.html#cfn-appmesh-virtualnode-virtualnodeconnectionpool-http2
        UpdateType: Mutable

    .PARAMETER HTTP
        An object that represents a type of connection pool.

        Type: VirtualNodeHttpConnectionPool
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodeconnectionpool.html#cfn-appmesh-virtualnode-virtualnodeconnectionpool-http
        UpdateType: Mutable

    .PARAMETER GRPC
        An object that represents a type of connection pool.

        Type: VirtualNodeGrpcConnectionPool
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodeconnectionpool.html#cfn-appmesh-virtualnode-virtualnodeconnectionpool-grpc
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.VirtualNodeConnectionPool')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TCP,
        [parameter(Mandatory = $false)]
        $HTTP2,
        [parameter(Mandatory = $false)]
        $HTTP,
        [parameter(Mandatory = $false)]
        $GRPC
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.VirtualNodeConnectionPool'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
