function Add-VSMWAAEnvironmentNetworkConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MWAA::Environment.NetworkConfiguration resource property to the template. The VPC networking components used to secure and enable network traffic between the AWS resources for your environment. To learn more, see About networking on Amazon MWAA: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html.

    .DESCRIPTION
        Adds an AWS::MWAA::Environment.NetworkConfiguration resource property to the template.
The VPC networking components used to secure and enable network traffic between the AWS resources for your environment. To learn more, see About networking on Amazon MWAA: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-networkconfiguration.html

    .PARAMETER SubnetIds
        A list of subnet IDs. **Required** to create an environment. Must be private subnets in two different availability zones. A subnet must be attached to the same VPC as the security group. To learn more, see About networking on Amazon MWAA: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-networkconfiguration.html#cfn-mwaa-environment-networkconfiguration-subnetids
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SecurityGroupIds
        A list of one or more security group IDs. Accepts up to 5 security group IDs. A security group must be attached to the same VPC as the subnets. To learn more, see Security in your VPC on Amazon MWAA: https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-security.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-networkconfiguration.html#cfn-mwaa-environment-networkconfiguration-securitygroupids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MWAA.Environment.NetworkConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SubnetIds,
        [parameter(Mandatory = $false)]
        $SecurityGroupIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MWAA.Environment.NetworkConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
