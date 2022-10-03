function Add-VSDataBrewRecipeSecondaryInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Recipe.SecondaryInput resource property to the template. Represents secondary inputs in a UNION transform.

    .DESCRIPTION
        Adds an AWS::DataBrew::Recipe.SecondaryInput resource property to the template.
Represents secondary inputs in a UNION transform.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-secondaryinput.html

    .PARAMETER S3InputDefinition
        The Amazon S3 location where the data is stored.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-secondaryinput.html#cfn-databrew-recipe-secondaryinput-s3inputdefinition
        UpdateType: Mutable
        Type: S3Location

    .PARAMETER DataCatalogInputDefinition
        The AWS Glue Data Catalog parameters for the data.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-secondaryinput.html#cfn-databrew-recipe-secondaryinput-datacataloginputdefinition
        UpdateType: Mutable
        Type: DataCatalogInputDefinition

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataBrew.Recipe.SecondaryInput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3InputDefinition,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataBrew.Recipe.SecondaryInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
