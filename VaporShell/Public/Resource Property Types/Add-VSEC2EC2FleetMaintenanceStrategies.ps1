function Add-VSEC2EC2FleetMaintenanceStrategies {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::EC2Fleet.MaintenanceStrategies resource property to the template. The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.

    .DESCRIPTION
        Adds an AWS::EC2::EC2Fleet.MaintenanceStrategies resource property to the template.
The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-maintenancestrategies.html

    .PARAMETER CapacityRebalance
        The strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-maintenancestrategies.html#cfn-ec2-ec2fleet-maintenancestrategies-capacityrebalance
        UpdateType: Immutable
        Type: CapacityRebalance

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.EC2Fleet.MaintenanceStrategies')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.EC2Fleet.MaintenanceStrategies'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
