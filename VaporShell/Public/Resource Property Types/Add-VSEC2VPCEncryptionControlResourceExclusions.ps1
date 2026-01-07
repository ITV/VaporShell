function Add-VSEC2VPCEncryptionControlResourceExclusions {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::VPCEncryptionControl.ResourceExclusions resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::VPCEncryptionControl.ResourceExclusions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html

    .PARAMETER ElasticFileSystem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-elasticfilesystem
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .PARAMETER VpcLattice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-vpclattice
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .PARAMETER VpcPeering
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-vpcpeering
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .PARAMETER InternetGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-internetgateway
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .PARAMETER EgressOnlyInternetGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-egressonlyinternetgateway
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .PARAMETER VirtualPrivateGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-virtualprivategateway
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .PARAMETER NatGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-natgateway
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .PARAMETER Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpcencryptioncontrol-resourceexclusions.html#cfn-ec2-vpcencryptioncontrol-resourceexclusions-lambda
        UpdateType: Mutable
        Type: VpcEncryptionControlExclusion

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.VPCEncryptionControl.ResourceExclusions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ElasticFileSystem,

        [Parameter(Mandatory = $false)]
        $VpcLattice,

        [Parameter(Mandatory = $false)]
        $VpcPeering,

        [Parameter(Mandatory = $false)]
        $InternetGateway,

        [Parameter(Mandatory = $false)]
        $EgressOnlyInternetGateway,

        [Parameter(Mandatory = $false)]
        $VirtualPrivateGateway,

        [Parameter(Mandatory = $false)]
        $NatGateway,

        [Parameter(Mandatory = $false)]
        $Lambda

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.VPCEncryptionControl.ResourceExclusions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
