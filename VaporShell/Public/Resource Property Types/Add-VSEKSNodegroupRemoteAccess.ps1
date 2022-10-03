function Add-VSEKSNodegroupRemoteAccess {
    <#
    .SYNOPSIS
        Adds an AWS::EKS::Nodegroup.RemoteAccess resource property to the template. An object representing the remote access configuration for the managed node group.

    .DESCRIPTION
        Adds an AWS::EKS::Nodegroup.RemoteAccess resource property to the template.
An object representing the remote access configuration for the managed node group.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html

    .PARAMETER SourceSecurityGroups
        The security groups that are allowed SSH access port 22 to the nodes. If you specify an Amazon EC2 SSH key but do not specify a source security group when you create a managed node group, then port 22 on the nodes is opened to the internet 0.0.0.0/0. For more information, see Security Groups for Your VPC: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html in the *Amazon Virtual Private Cloud User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-sourcesecuritygroups
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Ec2SshKey
        The Amazon EC2 SSH key that provides access for SSH communication with the nodes in the managed node group. For more information, see Amazon EC2 key pairs and Linux instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html in the *Amazon Elastic Compute Cloud User Guide for Linux Instances*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-ec2sshkey
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EKS.Nodegroup.RemoteAccess')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SourceSecurityGroups,
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
        $Ec2SshKey
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EKS.Nodegroup.RemoteAccess'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
