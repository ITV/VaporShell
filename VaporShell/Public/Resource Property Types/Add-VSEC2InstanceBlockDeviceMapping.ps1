function Add-VSEC2InstanceBlockDeviceMapping {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::Instance.BlockDeviceMapping resource property to the template. Specifies a block device mapping for an instance. You must specify exactly one of the following properties: VirtualName, Ebs, or NoDevice.

    .DESCRIPTION
        Adds an AWS::EC2::Instance.BlockDeviceMapping resource property to the template.
Specifies a block device mapping for an instance. You must specify exactly one of the following properties: VirtualName, Ebs, or NoDevice.

BlockDeviceMapping is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

**Important**

After the instance is running, you can modify only the DeleteOnTermination parameter for the attached volumes without interrupting the instance. Modifying any other parameter results in instance  replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html

    .PARAMETER DeviceName
        The device name for example, /dev/sdh or xvdh.
After the instance is running, this parameter is used to specify the device name of the block device mapping to update.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-devicename
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Ebs
        Parameters used to automatically set up EBS volumes when the instance is launched.
After the instance is running, you can modify only the DeleteOnTermination parameter for the attached volumes without interrupting the instance. Modifying any other parameter results in instance  replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-ebs
        Type: Ebs
        UpdateType: Mutable

    .PARAMETER NoDevice
        To omit the device from the block device mapping, specify an empty string.
After the instance is running, modifying this parameter results in instance  replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-nodevice
        Type: NoDevice
        UpdateType: Mutable

    .PARAMETER VirtualName
        The virtual device name ephemeralN. The name must be in the form ephemeral*X* where *X* is a number starting from zero 0. For example, an instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect.
*Constraints*: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.
After the instance is running, modifying this parameter results in instance  replacement: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-replacement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-virtualname
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.Instance.BlockDeviceMapping')]
    [cmdletbinding()]
    Param
    (
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
        $DeviceName,
        [parameter(Mandatory = $false)]
        $Ebs,
        [parameter(Mandatory = $false)]
        $NoDevice,
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
        $VirtualName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.Instance.BlockDeviceMapping'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
