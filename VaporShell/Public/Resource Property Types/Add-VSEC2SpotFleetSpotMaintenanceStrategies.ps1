function Add-VSEC2SpotFleetSpotMaintenanceStrategies {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::SpotFleet.SpotMaintenanceStrategies resource property to the template. The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.

    .DESCRIPTION
        Adds an AWS::EC2::SpotFleet.SpotMaintenanceStrategies resource property to the template.
The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotmaintenancestrategies.html

    .PARAMETER CapacityRebalance
        The Spot Instance replacement strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see Capacity rebalancing: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-capacity-rebalance.html in the *Amazon EC2 User Guide for Linux Instances*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotmaintenancestrategies.html#cfn-ec2-spotfleet-spotmaintenancestrategies-capacityrebalance
        UpdateType: Immutable
        Type: SpotCapacityRebalance

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.SpotFleet.SpotMaintenanceStrategies')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CapacityRebalance
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.SpotFleet.SpotMaintenanceStrategies'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
