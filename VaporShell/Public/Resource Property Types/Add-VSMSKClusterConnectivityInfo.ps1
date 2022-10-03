function Add-VSMSKClusterConnectivityInfo {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.ConnectivityInfo resource property to the template. Specifies whether the cluster's brokers are publicly accessible. By default, they are not.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.ConnectivityInfo resource property to the template.
Specifies whether the cluster's brokers are publicly accessible. By default, they are not.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-connectivityinfo.html

    .PARAMETER PublicAccess
        Specifies whether the cluster's brokers are accessible from the internet. Public access is off by default.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-connectivityinfo.html#cfn-msk-cluster-connectivityinfo-publicaccess
        UpdateType: Mutable
        Type: PublicAccess

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.ConnectivityInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PublicAccess
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.ConnectivityInfo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
