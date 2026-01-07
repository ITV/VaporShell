function Add-VSSageMakerClusterDeploymentConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Cluster.DeploymentConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Cluster.DeploymentConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html

    .PARAMETER AutoRollbackConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html#cfn-sagemaker-cluster-deploymentconfig-autorollbackconfiguration
        UpdateType: Mutable
        Type: List
        ItemType: AlarmDetails
        DuplicatesAllowed: True

    .PARAMETER RollingUpdatePolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html#cfn-sagemaker-cluster-deploymentconfig-rollingupdatepolicy
        UpdateType: Mutable
        Type: RollingUpdatePolicy

    .PARAMETER WaitIntervalInSeconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html#cfn-sagemaker-cluster-deploymentconfig-waitintervalinseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Cluster.DeploymentConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.Cluster.AlarmDetails"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AutoRollbackConfiguration,

        [Parameter(Mandatory = $false)]
        $RollingUpdatePolicy,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $WaitIntervalInSeconds

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Cluster.DeploymentConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
