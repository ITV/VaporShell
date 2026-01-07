function Add-VSQuickSightDataSetFilterOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.FilterOperation resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.FilterOperation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-filteroperation.html

    .PARAMETER DateFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-filteroperation.html#cfn-quicksight-dataset-filteroperation-datefiltercondition
        UpdateType: Mutable
        Type: DataSetDateFilterCondition

    .PARAMETER StringFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-filteroperation.html#cfn-quicksight-dataset-filteroperation-stringfiltercondition
        UpdateType: Mutable
        Type: DataSetStringFilterCondition

    .PARAMETER ConditionExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-filteroperation.html#cfn-quicksight-dataset-filteroperation-conditionexpression
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER NumericFilterCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-filteroperation.html#cfn-quicksight-dataset-filteroperation-numericfiltercondition
        UpdateType: Mutable
        Type: DataSetNumericFilterCondition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.FilterOperation')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DateFilterCondition,

        [Parameter(Mandatory = $false)]
        $StringFilterCondition,

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
        $ConditionExpression,

        [Parameter(Mandatory = $false)]
        $NumericFilterCondition

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.FilterOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
