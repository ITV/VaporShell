function Add-VSEKSClusterRemoteNodeNetwork {
    <#
    .SYNOPSIS
        Adds an AWS::EKS::Cluster.RemoteNodeNetwork resource property to the template.

    .DESCRIPTION
        Adds an AWS::EKS::Cluster.RemoteNodeNetwork resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-remotenodenetwork.html

    .PARAMETER Cidrs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-remotenodenetwork.html#cfn-eks-cluster-remotenodenetwork-cidrs
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EKS.Cluster.RemoteNodeNetwork')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Cidrs

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EKS.Cluster.RemoteNodeNetwork'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
