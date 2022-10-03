function Add-VSSageMakerModelBiasJobDefinitionModelBiasJobInput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelBiasJobDefinition.ModelBiasJobInput resource property to the template. Inputs for the model bias job.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelBiasJobDefinition.ModelBiasJobInput resource property to the template.
Inputs for the model bias job.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html

    .PARAMETER EndpointInput
        Input object for the endpoint.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-endpointinput
        UpdateType: Immutable
        Type: EndpointInput

    .PARAMETER GroundTruthS3Input
        Location of ground truth labels to use in model bias job.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasjobinput.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasjobinput-groundtruths3input
        UpdateType: Immutable
        Type: MonitoringGroundTruthS3Input

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelBiasJobDefinition.ModelBiasJobInput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $EndpointInput,
        [parameter(Mandatory = $true)]
        $GroundTruthS3Input
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
