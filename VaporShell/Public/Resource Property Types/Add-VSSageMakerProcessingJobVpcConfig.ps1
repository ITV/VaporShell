function Add-VSSageMakerProcessingJobVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ProcessingJob.VpcConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ProcessingJob.VpcConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-vpcconfig.html

    .PARAMETER Subnets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-vpcconfig.html#cfn-sagemaker-processingjob-vpcconfig-subnets
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER SecurityGroupIds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-vpcconfig.html#cfn-sagemaker-processingjob-vpcconfig-securitygroupids
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ProcessingJob.VpcConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Subnets,

        [Parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ProcessingJob.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
