function Add-VSMSKClusterSasl {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.Sasl resource property to the template. Details for client authentication using SASL. To turn on SASL, you must also turn on EncryptionInTransit by setting inCluster to true. You must set clientBroker to either TLS or TLS_PLAINTEXT. If you choose TLS_PLAINTEXT, then you must also set unauthenticated to true.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.Sasl resource property to the template.
Details for client authentication using SASL. To turn on SASL, you must also turn on EncryptionInTransit by setting inCluster to true. You must set clientBroker to either TLS or TLS_PLAINTEXT. If you choose TLS_PLAINTEXT, then you must also set unauthenticated to true.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html

    .PARAMETER Scram
        Details for SASL/SCRAM client authentication.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html#cfn-msk-cluster-sasl-scram
        UpdateType: Mutable
        Type: Scram

    .PARAMETER Iam
        Details for IAM access control.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html#cfn-msk-cluster-sasl-iam
        UpdateType: Mutable
        Type: Iam

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.Sasl')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Scram,
        [parameter(Mandatory = $false)]
        $Iam
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.Sasl'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
