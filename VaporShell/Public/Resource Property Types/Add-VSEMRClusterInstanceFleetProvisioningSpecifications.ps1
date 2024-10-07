function Add-VSEMRClusterInstanceFleetProvisioningSpecifications {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template. 

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html

    .PARAMETER OnDemandSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-cluster-instancefleetprovisioningspecifications-ondemandspecification
        Type: OnDemandProvisioningSpecification
        UpdateType: Mutable

    .PARAMETER SpotSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-cluster-instancefleetprovisioningspecifications-spotspecification
        Type: SpotProvisioningSpecification
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.InstanceFleetProvisioningSpecifications')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OnDemandSpecification,
        [parameter(Mandatory = $false)]
        $SpotSpecification
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.InstanceFleetProvisioningSpecifications'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
