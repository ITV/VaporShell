function Add-VSMSKClusterVpcConnectivitySasl {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.VpcConnectivitySasl resource property to the template. 

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.VpcConnectivitySasl resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivitysasl.html

    .PARAMETER Iam
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivitysasl.html#cfn-msk-cluster-vpcconnectivitysasl-iam
        UpdateType: Mutable
        Type: VpcConnectivityIam

    .PARAMETER Scram
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivitysasl.html#cfn-msk-cluster-vpcconnectivitysasl-scram
        UpdateType: Mutable
        Type: VpcConnectivityScram

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.VpcConnectivitySasl')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Iam,
        [parameter(Mandatory = $false)]
        $Scram
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.VpcConnectivitySasl'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
