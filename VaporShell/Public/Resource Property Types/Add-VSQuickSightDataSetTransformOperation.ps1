function Add-VSQuickSightDataSetTransformOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.TransformOperation resource property to the template. A data transformation on a logical table. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.TransformOperation resource property to the template.
A data transformation on a logical table. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html

    .PARAMETER TagColumnOperation
        An operation that tags a column with additional information.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-tagcolumnoperation
        UpdateType: Mutable
        Type: TagColumnOperation

    .PARAMETER FilterOperation
        An operation that filters rows based on some condition.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-filteroperation
        UpdateType: Mutable
        Type: FilterOperation

    .PARAMETER CastColumnTypeOperation
        A transform operation that casts a column to a different type.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-castcolumntypeoperation
        UpdateType: Mutable
        Type: CastColumnTypeOperation

    .PARAMETER CreateColumnsOperation
        An operation that creates calculated columns. Columns created in one such operation form a lexical closure.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-createcolumnsoperation
        UpdateType: Mutable
        Type: CreateColumnsOperation

    .PARAMETER RenameColumnOperation
        An operation that renames a column.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-renamecolumnoperation
        UpdateType: Mutable
        Type: RenameColumnOperation

    .PARAMETER ProjectOperation
        An operation that projects columns. Operations that come after a projection can only refer to projected columns.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-projectoperation
        UpdateType: Mutable
        Type: ProjectOperation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSet.TransformOperation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TagColumnOperation,
        [parameter(Mandatory = $false)]
        $FilterOperation,
        [parameter(Mandatory = $false)]
        $CastColumnTypeOperation,
        [parameter(Mandatory = $false)]
        $CreateColumnsOperation,
        [parameter(Mandatory = $false)]
        $RenameColumnOperation,
        [parameter(Mandatory = $false)]
        $ProjectOperation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.TransformOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
