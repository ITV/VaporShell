function Add-VSAppMeshVirtualNodeSubjectAlternativeNames {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.SubjectAlternativeNames resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.SubjectAlternativeNames resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-subjectalternativenames.html

    .PARAMETER Match
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
        [Parameter(Mandatory = $true)]
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
