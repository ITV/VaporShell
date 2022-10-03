function Add-VSEMRInstanceFleetConfigInstanceFleetProvisioningSpecifications {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetProvisioningSpecifications resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetProvisioningSpecifications resource property to the template.
**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

InstanceTypeConfig is a sub-property of InstanceFleetConfig. InstanceTypeConfig determines the EC2 instances that Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html

    .PARAMETER OnDemandSpecification
        The launch specification for On-Demand Instances in the instance fleet, which determines the allocation strategy.
The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. On-Demand Instances allocation strategy is available in Amazon EMR version 5.12.1 and later.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications-ondemandspecification
        Type: OnDemandProvisioningSpecification
        UpdateType: Mutable

    .PARAMETER SpotSpecification
        The launch specification for Spot Instances in the fleet, which determines the defined duration, provisioning timeout behavior, and allocation strategy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications-spotspecification
        Type: SpotProvisioningSpecification
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceFleetProvisioningSpecifications')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceFleetProvisioningSpecifications'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
