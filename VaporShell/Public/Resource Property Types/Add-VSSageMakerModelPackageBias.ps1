function Add-VSSageMakerModelPackageBias {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelPackage.Bias resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelPackage.Bias resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-bias.html

    .PARAMETER Report
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-bias.html#cfn-sagemaker-modelpackage-bias-report
        UpdateType: Immutable
        Type: MetricsSource

    .PARAMETER PreTrainingReport
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-bias.html#cfn-sagemaker-modelpackage-bias-pretrainingreport
        UpdateType: Immutable
        Type: MetricsSource

    .PARAMETER PostTrainingReport
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-bias.html#cfn-sagemaker-modelpackage-bias-posttrainingreport
        UpdateType: Immutable
        Type: MetricsSource

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelPackage.Bias')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Report,
        [parameter(Mandatory = $false)]
        $PreTrainingReport,
        [parameter(Mandatory = $false)]
        $PostTrainingReport
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelPackage.Bias'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
