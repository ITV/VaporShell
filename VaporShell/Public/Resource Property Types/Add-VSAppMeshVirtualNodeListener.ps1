function Add-VSAppMeshVirtualNodeListener {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.Listener resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.Listener resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html

    .PARAMETER ConnectionPool
        Type: VirtualNodeConnectionPool
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-connectionpool
        UpdateType: Mutable

    .PARAMETER Timeout
        Type: ListenerTimeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-timeout
        UpdateType: Mutable

    .PARAMETER HealthCheck
        Type: HealthCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-healthcheck
        UpdateType: Mutable

    .PARAMETER TLS
        Type: ListenerTls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-tls
        UpdateType: Mutable

    .PARAMETER PortMapping
        Type: PortMapping
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-portmapping
        UpdateType: Mutable

    .PARAMETER OutlierDetection
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
        [Parameter(Mandatory = $false)]
        $ConnectionPool,

        [Parameter(Mandatory = $false)]
        $Timeout,

        [Parameter(Mandatory = $false)]
        $HealthCheck,

        [Parameter(Mandatory = $false)]
        $TLS,

        [Parameter(Mandatory = $true)]
        $PortMapping,

        [Parameter(Mandatory = $false)]
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
