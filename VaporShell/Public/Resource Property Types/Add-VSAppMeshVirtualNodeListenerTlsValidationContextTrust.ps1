function Add-VSAppMeshVirtualNodeListenerTlsValidationContextTrust {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.ListenerTlsValidationContextTrust resource property to the template. An object that represents a listener's Transport Layer Security (TLS validation context trust.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.ListenerTlsValidationContextTrust resource property to the template.
An object that represents a listener's Transport Layer Security (TLS validation context trust.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontexttrust.html

    .PARAMETER SDS
        A reference to an object that represents a listener's Transport Layer Security TLS Secret Discovery Service validation context trust.

        Type: TlsValidationContextSdsTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-listenertlsvalidationcontexttrust-sds
        UpdateType: Mutable

    .PARAMETER File
        An object that represents a Transport Layer Security TLS validation context trust for a local file.

        Type: TlsValidationContextFileTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-listenertlsvalidationcontexttrust-file
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.ListenerTlsValidationContextTrust')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.ListenerTlsValidationContextTrust'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
