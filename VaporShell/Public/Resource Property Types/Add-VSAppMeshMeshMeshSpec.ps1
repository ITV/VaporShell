function Add-VSAppMeshMeshMeshSpec {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::Mesh.MeshSpec resource property to the template. An object that represents the specification of a service mesh.

    .DESCRIPTION
        Adds an AWS::AppMesh::Mesh.MeshSpec resource property to the template.
An object that represents the specification of a service mesh.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html

    .PARAMETER EgressFilter
        The egress filter rules for the service mesh.

        Type: EgressFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html#cfn-appmesh-mesh-meshspec-egressfilter
        UpdateType: Mutable

    .PARAMETER ServiceDiscovery
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: MeshServiceDiscovery
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html#cfn-appmesh-mesh-meshspec-servicediscovery
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.Mesh.MeshSpec')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $EgressFilter,
        [parameter(Mandatory = $false)]
        $ServiceDiscovery
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.Mesh.MeshSpec'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
