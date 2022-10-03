function Add-VSAppMeshVirtualGatewayVirtualGatewayClientTlsCertificate {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayClientTlsCertificate resource property to the template. An object that represents the virtual gateway's client's Transport Layer Security (TLS certificate.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayClientTlsCertificate resource property to the template.
An object that represents the virtual gateway's client's Transport Layer Security (TLS certificate.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclienttlscertificate.html

    .PARAMETER SDS
        A reference to an object that represents a virtual gateway's client's Secret Discovery Service certificate.

        Type: VirtualGatewayListenerTlsSdsCertificate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclienttlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewayclienttlscertificate-sds
        UpdateType: Mutable

    .PARAMETER File
        An object that represents a local file certificate. The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see  Transport Layer Security TLS : https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html.

        Type: VirtualGatewayListenerTlsFileCertificate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclienttlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewayclienttlscertificate-file
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayClientTlsCertificate')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SDS,
        [parameter(Mandatory = $false)]
        $File
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayClientTlsCertificate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
