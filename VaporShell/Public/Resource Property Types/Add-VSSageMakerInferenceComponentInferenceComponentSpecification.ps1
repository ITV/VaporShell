function Add-VSSageMakerInferenceComponentInferenceComponentSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::InferenceComponent.InferenceComponentSpecification resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::InferenceComponent.InferenceComponentSpecification resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html

    .PARAMETER Container
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-container
        UpdateType: Mutable
        Type: InferenceComponentContainerSpecification

    .PARAMETER ModelName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-modelname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ComputeResourceRequirements
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-computeresourcerequirements
        UpdateType: Mutable
        Type: InferenceComponentComputeResourceRequirements

    .PARAMETER StartupParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentspecification.html#cfn-sagemaker-inferencecomponent-inferencecomponentspecification-startupparameters
        UpdateType: Mutable
        Type: InferenceComponentStartupParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.InferenceComponent.InferenceComponentSpecification')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Container,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ModelName,

        [Parameter(Mandatory = $true)]
        $ComputeResourceRequirements,

        [Parameter(Mandatory = $false)]
        $StartupParameters

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.InferenceComponent.InferenceComponentSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
