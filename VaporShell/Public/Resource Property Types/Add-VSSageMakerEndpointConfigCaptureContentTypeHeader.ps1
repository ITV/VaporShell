function Add-VSSageMakerEndpointConfigCaptureContentTypeHeader {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::EndpointConfig.CaptureContentTypeHeader resource property to the template. Specifies the JSON and CSV content types of the data that the endpoint captures.

    .DESCRIPTION
        Adds an AWS::SageMaker::EndpointConfig.CaptureContentTypeHeader resource property to the template.
Specifies the JSON and CSV content types of the data that the endpoint captures.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader.html

    .PARAMETER JsonContentTypes
        A list of the JSON content types of the data that the endpoint captures. For the endpoint to capture the data, you must also specify the content type when you invoke the endpoint.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader.html#cfn-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader-jsoncontenttypes
        UpdateType: Immutable

    .PARAMETER CsvContentTypes
        A list of the CSV content types of the data that the endpoint captures. For the endpoint to capture the data, you must also specify the content type when you invoke the endpoint.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader.html#cfn-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader-csvcontenttypes
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.EndpointConfig.CaptureContentTypeHeader')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $JsonContentTypes,
        [parameter(Mandatory = $false)]
        $CsvContentTypes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.EndpointConfig.CaptureContentTypeHeader'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
