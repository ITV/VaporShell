function Add-VSSageMakerModelPackageDriftCheckBias {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelPackage.DriftCheckBias resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelPackage.DriftCheckBias resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html

    .PARAMETER PostTrainingConstraints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html#cfn-sagemaker-modelpackage-driftcheckbias-posttrainingconstraints
        UpdateType: Immutable
        Type: MetricsSource

    .PARAMETER PreTrainingConstraints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html#cfn-sagemaker-modelpackage-driftcheckbias-pretrainingconstraints
        UpdateType: Immutable
        Type: MetricsSource

    .PARAMETER ConfigFile
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html#cfn-sagemaker-modelpackage-driftcheckbias-configfile
        UpdateType: Immutable
        Type: FileSource

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelPackage.DriftCheckBias')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PostTrainingConstraints,
        [parameter(Mandatory = $false)]
        $PreTrainingConstraints,
        [parameter(Mandatory = $false)]
        $ConfigFile
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelPackage.DriftCheckBias'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
