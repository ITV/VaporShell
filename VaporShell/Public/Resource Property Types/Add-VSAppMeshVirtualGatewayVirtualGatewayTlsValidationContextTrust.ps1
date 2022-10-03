function Add-VSAppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContextTrust resource property to the template. An object that represents a Transport Layer Security (TLS validation context trust.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContextTrust resource property to the template.
An object that represents a Transport Layer Security (TLS validation context trust.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html

    .PARAMETER SDS
        A reference to an object that represents a virtual gateway's Transport Layer Security TLS Secret Discovery Service validation context trust.

        Type: VirtualGatewayTlsValidationContextSdsTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-sds
        UpdateType: Mutable

    .PARAMETER ACM
        A reference to an object that represents a Transport Layer Security TLS validation context trust for an AWS Certificate Manager certificate.

        Type: VirtualGatewayTlsValidationContextAcmTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-acm
        UpdateType: Mutable

    .PARAMETER File
        An object that represents a Transport Layer Security TLS validation context trust for a local file.

        Type: VirtualGatewayTlsValidationContextFileTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-file
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextTrust')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SDS,
        [parameter(Mandatory = $false)]
        $ACM,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextTrust'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
