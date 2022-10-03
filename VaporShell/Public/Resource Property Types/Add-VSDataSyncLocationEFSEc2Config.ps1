function Add-VSDataSyncLocationEFSEc2Config {
    <#
    .SYNOPSIS
        Adds an AWS::DataSync::LocationEFS.Ec2Config resource property to the template. The subnet and the security group that DataSync uses to access the target EFS file system. The subnet must have at least one mount target for that file system. The security group that you provide must be able to communicate with the security group on the mount target in the subnet specified.

    .DESCRIPTION
        Adds an AWS::DataSync::LocationEFS.Ec2Config resource property to the template.
The subnet and the security group that DataSync uses to access the target EFS file system. The subnet must have at least one mount target for that file system. The security group that you provide must be able to communicate with the security group on the mount target in the subnet specified.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationefs-ec2config.html

    .PARAMETER SecurityGroupArns
        The Amazon Resource Names ARNs of the security groups that are configured for the Amazon EC2 resource.
*Pattern*: ^arn:aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b:ec2:a-z-0-9]*:0-9]{12}:security-group/.*$

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationefs-ec2config.html#cfn-datasync-locationefs-ec2config-securitygrouparns
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SubnetArn
        The Amazon Resource Name ARN of the subnet that DataSync uses to access the target EFS file system.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationefs-ec2config.html#cfn-datasync-locationefs-ec2config-subnetarn
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataSync.LocationEFS.Ec2Config')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SecurityGroupArns,
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
        $SubnetArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataSync.LocationEFS.Ec2Config'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
