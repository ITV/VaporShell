function Add-VSMSKClusterVpcConnectivityClientAuthentication {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.VpcConnectivityClientAuthentication resource property to the template.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.VpcConnectivityClientAuthentication resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivityclientauthentication.html

    .PARAMETER Sasl
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivityclientauthentication.html#cfn-msk-cluster-vpcconnectivityclientauthentication-sasl
        UpdateType: Mutable
        Type: VpcConnectivitySasl

    .PARAMETER Tls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivityclientauthentication.html#cfn-msk-cluster-vpcconnectivityclientauthentication-tls
        UpdateType: Mutable
        Type: VpcConnectivityTls

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MSK.Cluster.VpcConnectivityClientAuthentication')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Sasl,

        [Parameter(Mandatory = $false)]
        $Tls

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.VpcConnectivityClientAuthentication'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
