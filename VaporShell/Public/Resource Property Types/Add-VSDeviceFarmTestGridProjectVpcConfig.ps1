function Add-VSDeviceFarmTestGridProjectVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::DeviceFarm::TestGridProject.VpcConfig resource property to the template. The VPC security groups and subnets attached to the TestGrid project.

    .DESCRIPTION
        Adds an AWS::DeviceFarm::TestGridProject.VpcConfig resource property to the template.
The VPC security groups and subnets attached to the TestGrid project.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-testgridproject-vpcconfig.html

    .PARAMETER SecurityGroupIds
        A list of VPC security group IDs.
A security group allows inbound traffic from network interfaces and their associated instances that are assigned to the same security group. See Security groups: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html in the *Amazon Virtual Private Cloud user guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-testgridproject-vpcconfig.html#cfn-devicefarm-testgridproject-vpcconfig-securitygroupids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SubnetIds
        A list of VPC subnet IDs.
A subnet is a range of IP addresses in your VPC. You can launch Amazon resources, such as EC2 instances, into a specific subnet. When you create a subnet, you specify the IPv4 CIDR block for the subnet, which is a subset of the VPC CIDR block. See VPCs and subnets: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html in the *Amazon Virtual Private Cloud user guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-testgridproject-vpcconfig.html#cfn-devicefarm-testgridproject-vpcconfig-subnetids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER VpcId
        A list of VPC IDs.
Each VPC is given a unique ID upon creation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devicefarm-testgridproject-vpcconfig.html#cfn-devicefarm-testgridproject-vpcconfig-vpcid
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DeviceFarm.TestGridProject.VpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SecurityGroupIds,
        [parameter(Mandatory = $true)]
        $SubnetIds,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VpcId
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DeviceFarm.TestGridProject.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
