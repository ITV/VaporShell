function Add-VSSageMakerModelPackageModelMetrics {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelPackage.ModelMetrics resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelPackage.ModelMetrics resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html

    .PARAMETER ModelDataQuality
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-modeldataquality
        UpdateType: Immutable
        Type: ModelDataQuality

    .PARAMETER Bias
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-bias
        UpdateType: Immutable
        Type: Bias

    .PARAMETER ModelQuality
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-modelquality
        UpdateType: Immutable
        Type: ModelQuality

    .PARAMETER Explainability
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelmetrics.html#cfn-sagemaker-modelpackage-modelmetrics-explainability
        UpdateType: Immutable
        Type: Explainability

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ModelPackage.ModelMetrics')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ModelDataQuality,

        [Parameter(Mandatory = $false)]
        $Bias,

        [Parameter(Mandatory = $false)]
        $ModelQuality,

        [Parameter(Mandatory = $false)]
        $Explainability

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelPackage.ModelMetrics'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
