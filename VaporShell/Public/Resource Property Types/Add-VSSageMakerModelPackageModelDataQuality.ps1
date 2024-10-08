function Add-VSSageMakerModelPackageModelDataQuality {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelPackage.ModelDataQuality resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelPackage.ModelDataQuality resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldataquality.html

    .PARAMETER Constraints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldataquality.html#cfn-sagemaker-modelpackage-modeldataquality-constraints
        UpdateType: Immutable
        Type: MetricsSource

    .PARAMETER Statistics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldataquality.html#cfn-sagemaker-modelpackage-modeldataquality-statistics
        UpdateType: Immutable
        Type: MetricsSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ModelPackage.ModelDataQuality')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelPackage.ModelDataQuality'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
