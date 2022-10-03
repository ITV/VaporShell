function Add-VSSageMakerModelPackageDriftCheckBaselines {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelPackage.DriftCheckBaselines resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelPackage.DriftCheckBaselines resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbaselines.html

    .PARAMETER Bias
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbaselines.html#cfn-sagemaker-modelpackage-driftcheckbaselines-bias
        UpdateType: Immutable
        Type: DriftCheckBias

    .PARAMETER Explainability
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbaselines.html#cfn-sagemaker-modelpackage-driftcheckbaselines-explainability
        UpdateType: Immutable
        Type: DriftCheckExplainability

    .PARAMETER ModelDataQuality
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbaselines.html#cfn-sagemaker-modelpackage-driftcheckbaselines-modeldataquality
        UpdateType: Immutable
        Type: DriftCheckModelDataQuality

    .PARAMETER ModelQuality
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbaselines.html#cfn-sagemaker-modelpackage-driftcheckbaselines-modelquality
        UpdateType: Immutable
        Type: DriftCheckModelQuality

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelPackage.DriftCheckBaselines')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Bias,
        [parameter(Mandatory = $false)]
        $Explainability,
        [parameter(Mandatory = $false)]
        $ModelDataQuality,
        [parameter(Mandatory = $false)]
        $ModelQuality
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelPackage.DriftCheckBaselines'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
