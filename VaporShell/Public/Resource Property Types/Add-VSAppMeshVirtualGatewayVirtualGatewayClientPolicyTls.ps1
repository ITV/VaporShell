function Add-VSAppMeshVirtualGatewayVirtualGatewayClientPolicyTls {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayClientPolicyTls resource property to the template. An object that represents a Transport Layer Security (TLS client policy.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayClientPolicyTls resource property to the template.
An object that represents a Transport Layer Security (TLS client policy.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html

    .PARAMETER Validation
        A reference to an object that represents a Transport Layer Security TLS validation context.

        Type: VirtualGatewayTlsValidationContext
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicytls-validation
        UpdateType: Mutable

    .PARAMETER Enforce
        Whether the policy is enforced. The default is True, if a value isn't specified.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicytls-enforce
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Ports
        One or more ports that the policy is enforced for.

        PrimitiveItemType: Integer
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicytls-ports
        UpdateType: Mutable

    .PARAMETER Certificate
        A reference to an object that represents a virtual gateway's client's Transport Layer Security TLS certificate.

        Type: VirtualGatewayClientTlsCertificate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicytls.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicytls-certificate
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayClientPolicyTls')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Validation,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enforce,
        [parameter(Mandatory = $false)]
        $Ports,
        [parameter(Mandatory = $false)]
        $Certificate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayClientPolicyTls'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
