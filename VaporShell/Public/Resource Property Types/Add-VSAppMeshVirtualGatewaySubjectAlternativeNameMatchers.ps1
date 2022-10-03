function Add-VSAppMeshVirtualGatewaySubjectAlternativeNameMatchers {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualGateway.SubjectAlternativeNameMatchers resource property to the template. An object that represents the methods by which a subject alternative name on a peer Transport Layer Security (TLS certificate can be matched.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualGateway.SubjectAlternativeNameMatchers resource property to the template.
An object that represents the methods by which a subject alternative name on a peer Transport Layer Security (TLS certificate can be matched.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-subjectalternativenamematchers.html

    .PARAMETER Exact
        The values sent must match the specified values exactly.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-subjectalternativenamematchers.html#cfn-appmesh-virtualgateway-subjectalternativenamematchers-exact
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualGateway.SubjectAlternativeNameMatchers')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Exact
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualGateway.SubjectAlternativeNameMatchers'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
