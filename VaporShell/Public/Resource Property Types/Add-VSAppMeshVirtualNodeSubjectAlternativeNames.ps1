function Add-VSAppMeshVirtualNodeSubjectAlternativeNames {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.SubjectAlternativeNames resource property to the template. An object that represents the subject alternative names secured by the certificate.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.SubjectAlternativeNames resource property to the template.
An object that represents the subject alternative names secured by the certificate.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-subjectalternativenames.html

    .PARAMETER Match
        An object that represents the criteria for determining a SANs match.

        Type: SubjectAlternativeNameMatchers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-subjectalternativenames.html#cfn-appmesh-virtualnode-subjectalternativenames-match
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.SubjectAlternativeNames')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Match
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.SubjectAlternativeNames'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
