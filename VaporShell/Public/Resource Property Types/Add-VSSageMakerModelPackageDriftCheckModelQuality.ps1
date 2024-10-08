function Add-VSSageMakerModelPackageDriftCheckModelQuality {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelPackage.DriftCheckModelQuality resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelPackage.DriftCheckModelQuality resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckmodelquality.html

    .PARAMETER Constraints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckmodelquality.html#cfn-sagemaker-modelpackage-driftcheckmodelquality-constraints
        UpdateType: Immutable
        Type: MetricsSource

    .PARAMETER Statistics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckmodelquality.html#cfn-sagemaker-modelpackage-driftcheckmodelquality-statistics
        UpdateType: Immutable
        Type: MetricsSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ModelPackage.DriftCheckModelQuality')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Constraints,

        [Parameter(Mandatory = $false)]
        $Statistics

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelPackage.DriftCheckModelQuality'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
