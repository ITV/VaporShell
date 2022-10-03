function Add-VSQuickSightDataSetPhysicalTable {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.PhysicalTable resource property to the template. A view of a data source that contains information about the shape of the data in the underlying source. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.PhysicalTable resource property to the template.
A view of a data source that contains information about the shape of the data in the underlying source. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html

    .PARAMETER RelationalTable
        A physical table type for relational data sources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html#cfn-quicksight-dataset-physicaltable-relationaltable
        UpdateType: Mutable
        Type: RelationalTable

    .PARAMETER CustomSql
        A physical table type built from the results of the custom SQL query.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html#cfn-quicksight-dataset-physicaltable-customsql
        UpdateType: Mutable
        Type: CustomSql

    .PARAMETER S3Source
        A physical table type for as S3 data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html#cfn-quicksight-dataset-physicaltable-s3source
        UpdateType: Mutable
        Type: S3Source

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSet.PhysicalTable')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RelationalTable,
        [parameter(Mandatory = $false)]
        $CustomSql,
        [parameter(Mandatory = $false)]
        $S3Source
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.PhysicalTable'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
