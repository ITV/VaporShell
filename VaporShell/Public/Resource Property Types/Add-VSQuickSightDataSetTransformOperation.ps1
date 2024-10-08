function Add-VSQuickSightDataSetTransformOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.TransformOperation resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.TransformOperation resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html

    .PARAMETER TagColumnOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-tagcolumnoperation
        UpdateType: Mutable
        Type: TagColumnOperation

    .PARAMETER UntagColumnOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-untagcolumnoperation
        UpdateType: Mutable
        Type: UntagColumnOperation

    .PARAMETER OverrideDatasetParameterOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-overridedatasetparameteroperation
        UpdateType: Mutable
        Type: OverrideDatasetParameterOperation

    .PARAMETER FilterOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-filteroperation
        UpdateType: Mutable
        Type: FilterOperation

    .PARAMETER CastColumnTypeOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-castcolumntypeoperation
        UpdateType: Mutable
        Type: CastColumnTypeOperation

    .PARAMETER RenameColumnOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-renamecolumnoperation
        UpdateType: Mutable
        Type: RenameColumnOperation

    .PARAMETER CreateColumnsOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformoperation.html#cfn-quicksight-dataset-transformoperation-createcolumnsoperation
        UpdateType: Mutable
        Type: CreateColumnsOperation

    .PARAMETER ProjectOperation
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
        $UntagColumnOperation,
        [parameter(Mandatory = $false)]
        $OverrideDatasetParameterOperation,
        [parameter(Mandatory = $false)]
        $FilterOperation,
        [parameter(Mandatory = $false)]
        $CastColumnTypeOperation,
        [parameter(Mandatory = $false)]
        $RenameColumnOperation,
        [parameter(Mandatory = $false)]
        $CreateColumnsOperation,
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
