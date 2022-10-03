function Add-VSSageMakerDataQualityJobDefinitionDataQualityJobInput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::DataQualityJobDefinition.DataQualityJobInput resource property to the template. The input for the data quality monitoring job. Currently endpoints are supported for input.

    .DESCRIPTION
        Adds an AWS::SageMaker::DataQualityJobDefinition.DataQualityJobInput resource property to the template.
The input for the data quality monitoring job. Currently endpoints are supported for input.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityjobinput.html

    .PARAMETER EndpointInput
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityjobinput.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityjobinput-endpointinput
        UpdateType: Immutable
        Type: EndpointInput

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.DataQualityJobDefinition.DataQualityJobInput')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.DataQualityJobDefinition.DataQualityJobInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
