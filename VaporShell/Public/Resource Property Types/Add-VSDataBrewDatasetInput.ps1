function Add-VSDataBrewDatasetInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Dataset.Input resource property to the template. 

    .DESCRIPTION
        Adds an AWS::DataBrew::Dataset.Input resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html

    .PARAMETER DatabaseInputDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-databaseinputdefinition
        UpdateType: Mutable
        Type: DatabaseInputDefinition

    .PARAMETER S3InputDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-s3inputdefinition
        UpdateType: Mutable
        Type: S3Location

    .PARAMETER Metadata
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-metadata
        UpdateType: Mutable
        Type: Metadata

    .PARAMETER DataCatalogInputDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-input.html#cfn-databrew-dataset-input-datacataloginputdefinition
        UpdateType: Mutable
        Type: DataCatalogInputDefinition

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataBrew.Dataset.Input')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DatabaseInputDefinition,
        [parameter(Mandatory = $false)]
        $S3InputDefinition,
        [parameter(Mandatory = $false)]
        $Metadata,
        [parameter(Mandatory = $false)]
        $DataCatalogInputDefinition
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
