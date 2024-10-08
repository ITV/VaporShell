function Add-VSEMRClusterAutoTerminationPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.AutoTerminationPolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.AutoTerminationPolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoterminationpolicy.html

    .PARAMETER IdleTimeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoterminationpolicy.html#cfn-elasticmapreduce-cluster-autoterminationpolicy-idletimeout
        PrimitiveType: Long
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EMR.Cluster.AutoTerminationPolicy')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IdleTimeout

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.AutoTerminationPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
