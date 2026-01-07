function Add-VSQuickSightDataSetDataSetNumericFilterCondition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DataSetNumericFilterCondition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DataSetNumericFilterCondition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetnumericfiltercondition.html

    .PARAMETER ColumnName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetnumericfiltercondition.html#cfn-quicksight-dataset-datasetnumericfiltercondition-columnname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RangeFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetnumericfiltercondition.html#cfn-quicksight-dataset-datasetnumericfiltercondition-rangefiltercondition
        UpdateType: Mutable
        Type: DataSetNumericRangeFilterCondition

    .PARAMETER ComparisonFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetnumericfiltercondition.html#cfn-quicksight-dataset-datasetnumericfiltercondition-comparisonfiltercondition
        UpdateType: Mutable
        Type: DataSetNumericComparisonFilterCondition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DataSetNumericFilterCondition')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DataSetNumericFilterCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
