function Add-VSDataBrewDatasetInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Dataset.Input resource property to the template. Represents information on how DataBrew can find data, in either the AWS Glue Data Catalog or Amazon S3.

    .DESCRIPTION
        Adds an AWS::DataBrew::Dataset.Input resource property to the template.
Represents information on how DataBrew can find data, in either the AWS Glue Data Catalog or Amazon S3.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html

    .PARAMETER S3InputDefinition
        The Amazon S3 location where the data is stored.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-s3inputdefinition
        UpdateType: Mutable
        Type: S3Location

    .PARAMETER DataCatalogInputDefinition
        The AWS Glue Data Catalog parameters for the data.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-datacataloginputdefinition
        UpdateType: Mutable
        Type: DataCatalogInputDefinition

    .PARAMETER DatabaseInputDefinition
        Connection information for dataset input files stored in a database.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-databaseinputdefinition
        UpdateType: Mutable
        Type: DatabaseInputDefinition

    .PARAMETER Metadata
        Contains additional resource information needed for specific datasets.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-metadata
        UpdateType: Mutable
        Type: Metadata

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataBrew.Dataset.Input')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3InputDefinition,
        [parameter(Mandatory = $false)]
        $DataCatalogInputDefinition,
        [parameter(Mandatory = $false)]
        $DatabaseInputDefinition,
        [parameter(Mandatory = $false)]
        $Metadata
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataBrew.Dataset.Input'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
