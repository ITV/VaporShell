function Add-VSBatchComputeEnvironmentEc2ConfigurationObject {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::ComputeEnvironment.Ec2ConfigurationObject resource property to the template. Provides information used to select Amazon Machine Images (AMIs for instances in the compute environment. If Ec2Configuration isn't specified, the default is ECS_AL2 (Amazon Linux 2: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami.

    .DESCRIPTION
        Adds an AWS::Batch::ComputeEnvironment.Ec2ConfigurationObject resource property to the template.
Provides information used to select Amazon Machine Images (AMIs for instances in the compute environment. If Ec2Configuration isn't specified, the default is ECS_AL2 (Amazon Linux 2: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami.

**Note**

This object isn't applicable to jobs that are running on Fargate resources.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-ec2configurationobject.html

    .PARAMETER ImageIdOverride
        The AMI ID used for instances launched in the compute environment that match the image type. This setting overrides the imageId set in the computeResource object.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-ec2configurationobject.html#cfn-batch-computeenvironment-ec2configurationobject-imageidoverride
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ImageType
        The image type to match with the instance type to select an AMI. If the imageIdOverride parameter isn't specified, then a recent Amazon ECS-optimized Amazon Linux 2 AMI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami ECS_AL2 is used.
ECS_AL2
Amazon Linux 2: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami− Default for all non-GPU instance families.
ECS_AL2_NVIDIA
Amazon Linux 2 GPU: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#gpuami−Default for all GPU instance families for example P4 and G4 and can be used for all non AWS Graviton-based instance types.
ECS_AL1
Amazon Linux: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#alami. Amazon Linux is reaching the end-of-life of standard support. For more information, see Amazon Linux AMI: http://aws.amazon.com/amazon-linux-ami/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-ec2configurationobject.html#cfn-batch-computeenvironment-ec2configurationobject-imagetype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.ComputeEnvironment.Ec2ConfigurationObject')]
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
        $ImageIdOverride,
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
        $ImageType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.ComputeEnvironment.Ec2ConfigurationObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
