function Add-VSAppMeshVirtualGatewayVirtualGatewayListenerTlsValidationContext {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsValidationContext resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsValidationContext resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontext.html

    .PARAMETER SubjectAlternativeNames
        Type: SubjectAlternativeNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontext.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontext-subjectalternativenames
        UpdateType: Mutable

    .PARAMETER Trust
        Type: VirtualGatewayListenerTlsValidationContextTrust
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontext.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontext-trust
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayListenerTlsValidationContext')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SubjectAlternativeNames,

        [Parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayListenerTlsValidationContext'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
