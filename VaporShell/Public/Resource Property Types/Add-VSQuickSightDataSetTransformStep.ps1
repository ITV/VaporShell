function Add-VSQuickSightDataSetTransformStep {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.TransformStep resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.TransformStep resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html

    .PARAMETER ProjectStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-projectstep
        UpdateType: Mutable
        Type: ProjectOperation

    .PARAMETER CreateColumnsStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-createcolumnsstep
        UpdateType: Mutable
        Type: CreateColumnsOperation

    .PARAMETER RenameColumnsStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-renamecolumnsstep
        UpdateType: Mutable
        Type: RenameColumnsOperation

    .PARAMETER CastColumnTypesStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-castcolumntypesstep
        UpdateType: Mutable
        Type: CastColumnTypesOperation

    .PARAMETER ImportTableStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-importtablestep
        UpdateType: Mutable
        Type: ImportTableOperation

    .PARAMETER UnpivotStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-unpivotstep
        UpdateType: Mutable
        Type: UnpivotOperation

    .PARAMETER JoinStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-joinstep
        UpdateType: Mutable
        Type: JoinOperation

    .PARAMETER AppendStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-appendstep
        UpdateType: Mutable
        Type: AppendOperation

    .PARAMETER FiltersStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-filtersstep
        UpdateType: Mutable
        Type: FiltersOperation

    .PARAMETER AggregateStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-aggregatestep
        UpdateType: Mutable
        Type: AggregateOperation

    .PARAMETER PivotStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-transformstep.html#cfn-quicksight-dataset-transformstep-pivotstep
        UpdateType: Mutable
        Type: PivotOperation

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.TransformStep')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ProjectStep,

        [Parameter(Mandatory = $false)]
        $CreateColumnsStep,

        [Parameter(Mandatory = $false)]
        $RenameColumnsStep,

        [Parameter(Mandatory = $false)]
        $CastColumnTypesStep,

        [Parameter(Mandatory = $false)]
        $ImportTableStep,

        [Parameter(Mandatory = $false)]
        $UnpivotStep,

        [Parameter(Mandatory = $false)]
        $JoinStep,

        [Parameter(Mandatory = $false)]
        $AppendStep,

        [Parameter(Mandatory = $false)]
        $FiltersStep,

        [Parameter(Mandatory = $false)]
        $AggregateStep,

        [Parameter(Mandatory = $false)]
        $PivotStep

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.TransformStep'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
