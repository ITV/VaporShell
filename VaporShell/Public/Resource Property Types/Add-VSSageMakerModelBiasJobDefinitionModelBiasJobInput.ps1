function Add-VSSageMakerModelBiasJobDefinitionModelBiasJobInput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelBiasJobDefinition.ModelBiasJobInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelBiasJobDefinition.ModelBiasJobInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html

    .PARAMETER GroundTruthS3Input
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-groundtruths3input
        UpdateType: Immutable
        Type: MonitoringGroundTruthS3Input

    .PARAMETER BatchTransformInput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-batchtransforminput
        UpdateType: Immutable
        Type: BatchTransformInput

    .PARAMETER EndpointInput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-endpointinput
        UpdateType: Immutable
        Type: EndpointInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ModelBiasJobDefinition.ModelBiasJobInput')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $GroundTruthS3Input,

        [Parameter(Mandatory = $false)]
        $BatchTransformInput,

        [Parameter(Mandatory = $false)]
        $EndpointInput

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelBiasJobDefinition.ModelBiasJobInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
