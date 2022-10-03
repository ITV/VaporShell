function Add-VSLakeFormationPrincipalPermissionsResource {
    <#
    .SYNOPSIS
        Adds an AWS::LakeFormation::PrincipalPermissions.Resource resource property to the template. 

    .DESCRIPTION
        Adds an AWS::LakeFormation::PrincipalPermissions.Resource resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html

    .PARAMETER Catalog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-catalog
        UpdateType: Immutable
        Type: CatalogResource

    .PARAMETER Database
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-database
        UpdateType: Immutable
        Type: DatabaseResource

    .PARAMETER Table
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-table
        UpdateType: Immutable
        Type: TableResource

    .PARAMETER TableWithColumns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-tablewithcolumns
        UpdateType: Immutable
        Type: TableWithColumnsResource

    .PARAMETER DataLocation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-datalocation
        UpdateType: Immutable
        Type: DataLocationResource

    .PARAMETER DataCellsFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-datacellsfilter
        UpdateType: Immutable
        Type: DataCellsFilterResource

    .PARAMETER LFTag
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-lftag
        UpdateType: Immutable
        Type: LFTagKeyResource

    .PARAMETER LFTagPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-resource.html#cfn-lakeformation-principalpermissions-resource-lftagpolicy
        UpdateType: Immutable
        Type: LFTagPolicyResource

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LakeFormation.PrincipalPermissions.Resource')]
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
        $TableWithColumns,
        [parameter(Mandatory = $false)]
        $DataLocation,
        [parameter(Mandatory = $false)]
        $DataCellsFilter,
        [parameter(Mandatory = $false)]
        $LFTag,
        [parameter(Mandatory = $false)]
        $LFTagPolicy
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LakeFormation.PrincipalPermissions.Resource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
