function Add-VSSageMakerInferenceComponentInferenceComponentDeploymentConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::InferenceComponent.InferenceComponentDeploymentConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::InferenceComponent.InferenceComponentDeploymentConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig.html

    .PARAMETER AutoRollbackConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig.html#cfn-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig-autorollbackconfiguration
        UpdateType: Mutable
        Type: AutoRollbackConfiguration

    .PARAMETER RollingUpdatePolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig.html#cfn-sagemaker-inferencecomponent-inferencecomponentdeploymentconfig-rollingupdatepolicy
        UpdateType: Mutable
        Type: InferenceComponentRollingUpdatePolicy

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.InferenceComponent.InferenceComponentDeploymentConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AutoRollbackConfiguration,

        [Parameter(Mandatory = $false)]
        $RollingUpdatePolicy

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.InferenceComponent.InferenceComponentDeploymentConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
