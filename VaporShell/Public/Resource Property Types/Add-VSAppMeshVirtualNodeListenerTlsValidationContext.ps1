function Add-VSAppMeshVirtualNodeListenerTlsValidationContext {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.ListenerTlsValidationContext resource property to the template. An object that represents a listener's Transport Layer Security (TLS validation context.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.ListenerTlsValidationContext resource property to the template.
An object that represents a listener's Transport Layer Security (TLS validation context.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontext.html

    .PARAMETER SubjectAlternativeNames
        A reference to an object that represents the SANs for a listener's Transport Layer Security TLS validation context.

        Type: SubjectAlternativeNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontext.html#cfn-appmesh-virtualnode-listenertlsvalidationcontext-subjectalternativenames
        UpdateType: Mutable

    .PARAMETER Trust
        A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security TLS certificate.

        Type: ListenerTlsValidationContextTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontext.html#cfn-appmesh-virtualnode-listenertlsvalidationcontext-trust
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.ListenerTlsValidationContext')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SubjectAlternativeNames,
        [parameter(Mandatory = $true)]
        $Trust
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.ListenerTlsValidationContext'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
