function Add-VSEC2EC2FleetCapacityRebalance {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::EC2Fleet.CapacityRebalance resource property to the template. The Spot Instance replacement strategy to use when Amazon EC2 emits a rebalance notification signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see Capacity rebalancing: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-capacity-rebalance.html in the *Amazon EC2 User Guide*.

    .DESCRIPTION
        Adds an AWS::EC2::EC2Fleet.CapacityRebalance resource property to the template.
The Spot Instance replacement strategy to use when Amazon EC2 emits a rebalance notification signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see Capacity rebalancing: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-capacity-rebalance.html in the *Amazon EC2 User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityrebalance.html

    .PARAMETER ReplacementStrategy
        The replacement strategy to use. Only available for fleets of type maintain.
launch - EC2 Fleet launches a replacement Spot Instance when a rebalance notification is emitted for an existing Spot Instance in the fleet. EC2 Fleet does not terminate the instances that receive a rebalance notification. You can terminate the old instances, or you can leave them running. You are charged for all instances while they are running.
launch-before-terminate - EC2 Fleet launches a replacement Spot Instance when a rebalance notification is emitted for an existing Spot Instance in the fleet, and then, after a delay that you specify in TerminationDelay, terminates the instances that received a rebalance notification.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityrebalance.html#cfn-ec2-ec2fleet-capacityrebalance-replacementstrategy
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER TerminationDelay
        The amount of time in seconds that Amazon EC2 waits before terminating the old Spot Instance after launching a new replacement Spot Instance.
Required when ReplacementStrategy is set to launch-before-terminate.
Not valid when ReplacementStrategy is set to launch.
Valid values: Minimum value of 120 seconds. Maximum value of 7200 seconds.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityrebalance.html#cfn-ec2-ec2fleet-capacityrebalance-terminationdelay
        UpdateType: Immutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.EC2Fleet.CapacityRebalance')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ReplacementStrategy,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TerminationDelay
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.EC2Fleet.CapacityRebalance'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
