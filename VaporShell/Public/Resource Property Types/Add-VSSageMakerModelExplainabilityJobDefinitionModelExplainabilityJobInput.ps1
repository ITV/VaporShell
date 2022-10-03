function Add-VSSageMakerModelExplainabilityJobDefinitionModelExplainabilityJobInput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelExplainabilityJobDefinition.ModelExplainabilityJobInput resource property to the template. Inputs for the model explainability job.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelExplainabilityJobDefinition.ModelExplainabilityJobInput resource property to the template.
Inputs for the model explainability job.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityjobinput.html

    .PARAMETER EndpointInput
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityjobinput.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityjobinput-endpointinput
        UpdateType: Immutable
        Type: EndpointInput

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityJobInput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityJobInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
