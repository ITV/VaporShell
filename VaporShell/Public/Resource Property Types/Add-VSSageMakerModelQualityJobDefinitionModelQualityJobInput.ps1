function Add-VSSageMakerModelQualityJobDefinitionModelQualityJobInput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelQualityJobDefinition.ModelQualityJobInput resource property to the template. The input for the model quality monitoring job. Currently endponts are supported for input for model quality monitoring jobs.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelQualityJobDefinition.ModelQualityJobInput resource property to the template.
The input for the model quality monitoring job. Currently endponts are supported for input for model quality monitoring jobs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityjobinput.html

    .PARAMETER EndpointInput
        Input object for the endpoint

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityjobinput.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityjobinput-endpointinput
        UpdateType: Immutable
        Type: EndpointInput

    .PARAMETER GroundTruthS3Input
        The ground truth label provided for the model.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityjobinput.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityjobinput-groundtruths3input
        UpdateType: Immutable
        Type: MonitoringGroundTruthS3Input

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelQualityJobDefinition.ModelQualityJobInput')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelQualityJobDefinition.ModelQualityJobInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
