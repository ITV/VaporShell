function Add-VSAppMeshVirtualNodeListener {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.Listener resource property to the template. An object that represents a listener for a virtual node.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.Listener resource property to the template.
An object that represents a listener for a virtual node.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html

    .PARAMETER ConnectionPool
        The connection pool information for the listener.

        Type: VirtualNodeConnectionPool
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-connectionpool
        UpdateType: Mutable

    .PARAMETER Timeout
        An object that represents timeouts for different protocols.

        Type: ListenerTimeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-timeout
        UpdateType: Mutable

    .PARAMETER HealthCheck
        The health check information for the listener.

        Type: HealthCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-healthcheck
        UpdateType: Mutable

    .PARAMETER TLS
        A reference to an object that represents the Transport Layer Security TLS properties for a listener.

        Type: ListenerTls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-tls
        UpdateType: Mutable

    .PARAMETER PortMapping
        The port mapping information for the listener.

        Type: PortMapping
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-portmapping
        UpdateType: Mutable

    .PARAMETER OutlierDetection
        The outlier detection information for the listener.

        Type: OutlierDetection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-outlierdetection
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.Listener')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ConnectionPool,
        [parameter(Mandatory = $false)]
        $Timeout,
        [parameter(Mandatory = $false)]
        $HealthCheck,
        [parameter(Mandatory = $false)]
        $TLS,
        [parameter(Mandatory = $true)]
        $PortMapping,
        [parameter(Mandatory = $false)]
        $OutlierDetection
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.Listener'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
