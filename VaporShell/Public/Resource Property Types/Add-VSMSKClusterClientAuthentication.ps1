function Add-VSMSKClusterClientAuthentication {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.ClientAuthentication resource property to the template.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.ClientAuthentication resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html

    .PARAMETER Sasl
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-sasl
        UpdateType: Mutable
        Type: Sasl

    .PARAMETER Unauthenticated
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-unauthenticated
        UpdateType: Mutable
        Type: Unauthenticated

    .PARAMETER Tls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-tls
        UpdateType: Mutable
        Type: Tls

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MSK.Cluster.ClientAuthentication')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Sasl,

        [Parameter(Mandatory = $false)]
        $Unauthenticated,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.ClientAuthentication'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
