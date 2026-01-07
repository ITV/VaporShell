function Add-VSSageMakerInferenceComponentInferenceComponentRollingUpdatePolicy {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::InferenceComponent.InferenceComponentRollingUpdatePolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::InferenceComponent.InferenceComponentRollingUpdatePolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html

    .PARAMETER MaximumExecutionTimeoutInSeconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-maximumexecutiontimeoutinseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MaximumBatchSize
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-maximumbatchsize
        UpdateType: Mutable
        Type: InferenceComponentCapacitySize

    .PARAMETER WaitIntervalInSeconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-waitintervalinseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER RollbackMaximumBatchSize
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy.html#cfn-sagemaker-inferencecomponent-inferencecomponentrollingupdatepolicy-rollbackmaximumbatchsize
        UpdateType: Mutable
        Type: InferenceComponentCapacitySize

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.InferenceComponent.InferenceComponentRollingUpdatePolicy')]
    [CmdletBinding()]

    Param
    (
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
        $MaximumExecutionTimeoutInSeconds,

        [Parameter(Mandatory = $false)]
        $MaximumBatchSize,

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
        $WaitIntervalInSeconds,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.InferenceComponent.InferenceComponentRollingUpdatePolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
