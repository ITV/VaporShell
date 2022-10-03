function Add-VSSageMakerEndpointConfigAsyncInferenceConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::EndpointConfig.AsyncInferenceConfig resource property to the template. Specifies configuration for how an endpoint performs asynchronous inference.

    .DESCRIPTION
        Adds an AWS::SageMaker::EndpointConfig.AsyncInferenceConfig resource property to the template.
Specifies configuration for how an endpoint performs asynchronous inference.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceconfig.html

    .PARAMETER OutputConfig
        Specifies the configuration for asynchronous inference invocation outputs.

        Type: AsyncInferenceOutputConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceconfig.html#cfn-sagemaker-endpointconfig-asyncinferenceconfig-outputconfig
        UpdateType: Immutable

    .PARAMETER ClientConfig
        Configures the behavior of the client used by SageMaker to interact with the model container during asynchronous inference.

        Type: AsyncInferenceClientConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceconfig.html#cfn-sagemaker-endpointconfig-asyncinferenceconfig-clientconfig
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.EndpointConfig.AsyncInferenceConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $OutputConfig,
        [parameter(Mandatory = $false)]
        $ClientConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.EndpointConfig.AsyncInferenceConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
