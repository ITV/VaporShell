function Add-VSLakeFormationTagAssociationResource {
    <#
    .SYNOPSIS
        Adds an AWS::LakeFormation::TagAssociation.Resource resource property to the template. 

    .DESCRIPTION
        Adds an AWS::LakeFormation::TagAssociation.Resource resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-resource.html

    .PARAMETER Catalog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-resource.html#cfn-lakeformation-tagassociation-resource-catalog
        UpdateType: Immutable
        Type: CatalogResource

    .PARAMETER Database
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-resource.html#cfn-lakeformation-tagassociation-resource-database
        UpdateType: Immutable
        Type: DatabaseResource

    .PARAMETER Table
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-resource.html#cfn-lakeformation-tagassociation-resource-table
        UpdateType: Immutable
        Type: TableResource

    .PARAMETER TableWithColumns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-resource.html#cfn-lakeformation-tagassociation-resource-tablewithcolumns
        UpdateType: Immutable
        Type: TableWithColumnsResource

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LakeFormation.TagAssociation.Resource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Catalog,
        [parameter(Mandatory = $false)]
        $Database,
        [parameter(Mandatory = $false)]
        $Table,
        [parameter(Mandatory = $false)]
        $TableWithColumns
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LakeFormation.TagAssociation.Resource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
