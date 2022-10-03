function Add-VSAppMeshVirtualNodeListenerTimeout {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.ListenerTimeout resource property to the template. An object that represents timeouts for different protocols.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.ListenerTimeout resource property to the template.
An object that represents timeouts for different protocols.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html

    .PARAMETER TCP
        An object that represents types of timeouts.

        Type: TcpTimeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-tcp
        UpdateType: Mutable

    .PARAMETER HTTP2
        An object that represents types of timeouts.

        Type: HttpTimeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-http2
        UpdateType: Mutable

    .PARAMETER HTTP
        An object that represents types of timeouts.

        Type: HttpTimeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-http
        UpdateType: Mutable

    .PARAMETER GRPC
        An object that represents types of timeouts.

        Type: GrpcTimeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-grpc
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.ListenerTimeout')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.ListenerTimeout'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
