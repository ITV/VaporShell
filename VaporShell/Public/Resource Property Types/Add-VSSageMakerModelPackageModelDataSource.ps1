function Add-VSSageMakerModelPackageModelDataSource {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelPackage.ModelDataSource resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelPackage.ModelDataSource resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldatasource.html

    .PARAMETER S3DataSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldatasource.html#cfn-sagemaker-modelpackage-modeldatasource-s3datasource
        UpdateType: Conditional
        Type: S3ModelDataSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ModelPackage.ModelDataSource')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3DataSource

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelPackage.ModelDataSource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
