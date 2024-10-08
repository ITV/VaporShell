function Add-VSSageMakerModelModelDataSource {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Model.ModelDataSource resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Model.ModelDataSource resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition-modeldatasource.html

    .PARAMETER S3DataSource
        Type: S3DataSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition-modeldatasource.html#cfn-sagemaker-model-containerdefinition-modeldatasource-s3datasource
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Model.ModelDataSource')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Model.ModelDataSource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
