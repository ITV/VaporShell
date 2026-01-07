function Add-VSSageMakerClusterRollingUpdatePolicy {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Cluster.RollingUpdatePolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Cluster.RollingUpdatePolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-rollingupdatepolicy.html

    .PARAMETER MaximumBatchSize
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-rollingupdatepolicy.html#cfn-sagemaker-cluster-rollingupdatepolicy-maximumbatchsize
        UpdateType: Mutable
        Type: CapacitySizeConfig

    .PARAMETER RollbackMaximumBatchSize
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-rollingupdatepolicy.html#cfn-sagemaker-cluster-rollingupdatepolicy-rollbackmaximumbatchsize
        UpdateType: Mutable
        Type: CapacitySizeConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Cluster.RollingUpdatePolicy')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $MaximumBatchSize,

        [Parameter(Mandatory = $false)]
        $RollbackMaximumBatchSize

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Cluster.RollingUpdatePolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
