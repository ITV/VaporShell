function Add-VSQuickSightDataSetPivotOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.PivotOperation resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.PivotOperation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-pivotoperation.html

    .PARAMETER PivotConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-pivotoperation.html#cfn-quicksight-dataset-pivotoperation-pivotconfiguration
        UpdateType: Mutable
        Type: PivotConfiguration

    .PARAMETER GroupByColumnNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-pivotoperation.html#cfn-quicksight-dataset-pivotoperation-groupbycolumnnames
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Alias
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-pivotoperation.html#cfn-quicksight-dataset-pivotoperation-alias
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ValueColumnConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-pivotoperation.html#cfn-quicksight-dataset-pivotoperation-valuecolumnconfiguration
        UpdateType: Mutable
        Type: ValueColumnConfiguration

    .PARAMETER Source
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-pivotoperation.html#cfn-quicksight-dataset-pivotoperation-source
        UpdateType: Mutable
        Type: TransformOperationSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.PivotOperation')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $PivotConfiguration,

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
        $ValueColumnConfiguration,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.PivotOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
