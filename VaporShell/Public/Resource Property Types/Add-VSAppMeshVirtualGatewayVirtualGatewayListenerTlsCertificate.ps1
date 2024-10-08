function Add-VSAppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsCertificate resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsCertificate resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlscertificate.html

    .PARAMETER SDS
        Type: VirtualGatewayListenerTlsSdsCertificate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlscertificate-sds
        UpdateType: Mutable

    .PARAMETER ACM
        Type: VirtualGatewayListenerTlsAcmCertificate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlscertificate-acm
        UpdateType: Mutable

    .PARAMETER File
        Type: VirtualGatewayListenerTlsFileCertificate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlscertificate-file
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayListenerTlsCertificate')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SDS,

        [Parameter(Mandatory = $false)]
        $ACM,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualGateway.VirtualGatewayListenerTlsCertificate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
