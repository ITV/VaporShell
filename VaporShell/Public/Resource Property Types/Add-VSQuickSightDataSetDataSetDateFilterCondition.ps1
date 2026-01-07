function Add-VSQuickSightDataSetDataSetDateFilterCondition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DataSetDateFilterCondition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DataSetDateFilterCondition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdatefiltercondition.html

    .PARAMETER ColumnName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdatefiltercondition.html#cfn-quicksight-dataset-datasetdatefiltercondition-columnname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RangeFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdatefiltercondition.html#cfn-quicksight-dataset-datasetdatefiltercondition-rangefiltercondition
        UpdateType: Mutable
        Type: DataSetDateRangeFilterCondition

    .PARAMETER ComparisonFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdatefiltercondition.html#cfn-quicksight-dataset-datasetdatefiltercondition-comparisonfiltercondition
        UpdateType: Mutable
        Type: DataSetDateComparisonFilterCondition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DataSetDateFilterCondition')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ColumnName,

        [Parameter(Mandatory = $false)]
        $RangeFilterCondition,

        [Parameter(Mandatory = $false)]
        $ComparisonFilterCondition

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DataSetDateFilterCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
