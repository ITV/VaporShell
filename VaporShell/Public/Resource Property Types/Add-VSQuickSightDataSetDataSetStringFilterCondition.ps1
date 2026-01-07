function Add-VSQuickSightDataSetDataSetStringFilterCondition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DataSetStringFilterCondition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DataSetStringFilterCondition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetstringfiltercondition.html

    .PARAMETER ColumnName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetstringfiltercondition.html#cfn-quicksight-dataset-datasetstringfiltercondition-columnname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ComparisonFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetstringfiltercondition.html#cfn-quicksight-dataset-datasetstringfiltercondition-comparisonfiltercondition
        UpdateType: Mutable
        Type: DataSetStringComparisonFilterCondition

    .PARAMETER ListFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetstringfiltercondition.html#cfn-quicksight-dataset-datasetstringfiltercondition-listfiltercondition
        UpdateType: Mutable
        Type: DataSetStringListFilterCondition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DataSetStringFilterCondition')]
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
        $ComparisonFilterCondition,

        [Parameter(Mandatory = $false)]
        $ListFilterCondition

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DataSetStringFilterCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
