function Add-VSPCSClusterJwtAuth {
    <#
    .SYNOPSIS
        Adds an AWS::PCS::Cluster.JwtAuth resource property to the template.

    .DESCRIPTION
        Adds an AWS::PCS::Cluster.JwtAuth resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-jwtauth.html

    .PARAMETER JwtKey
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-jwtauth.html#cfn-pcs-cluster-jwtauth-jwtkey
        UpdateType: Mutable
        Type: JwtKey

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.PCS.Cluster.JwtAuth')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $JwtKey

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCS.Cluster.JwtAuth'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
