function Add-VSQuickSightDataSetAggregateOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.AggregateOperation resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.AggregateOperation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-aggregateoperation.html

    .PARAMETER GroupByColumnNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-aggregateoperation.html#cfn-quicksight-dataset-aggregateoperation-groupbycolumnnames
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Alias
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-aggregateoperation.html#cfn-quicksight-dataset-aggregateoperation-alias
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Aggregations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-aggregateoperation.html#cfn-quicksight-dataset-aggregateoperation-aggregations
        UpdateType: Mutable
        Type: List
        ItemType: Aggregation
        DuplicatesAllowed: True

    .PARAMETER Source
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-aggregateoperation.html#cfn-quicksight-dataset-aggregateoperation-source
        UpdateType: Mutable
        Type: TransformOperationSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.AggregateOperation')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $GroupByColumnNames,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Alias,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.DataSet.Aggregation"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Aggregations,

        [Parameter(Mandatory = $true)]
        $Source

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.AggregateOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
