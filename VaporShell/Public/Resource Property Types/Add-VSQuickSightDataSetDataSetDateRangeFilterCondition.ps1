function Add-VSQuickSightDataSetDataSetDateRangeFilterCondition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DataSetDateRangeFilterCondition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DataSetDateRangeFilterCondition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdaterangefiltercondition.html

    .PARAMETER IncludeMaximum
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdaterangefiltercondition.html#cfn-quicksight-dataset-datasetdaterangefiltercondition-includemaximum
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER RangeMinimum
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdaterangefiltercondition.html#cfn-quicksight-dataset-datasetdaterangefiltercondition-rangeminimum
        UpdateType: Mutable
        Type: DataSetDateFilterValue

    .PARAMETER RangeMaximum
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdaterangefiltercondition.html#cfn-quicksight-dataset-datasetdaterangefiltercondition-rangemaximum
        UpdateType: Mutable
        Type: DataSetDateFilterValue

    .PARAMETER IncludeMinimum
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetdaterangefiltercondition.html#cfn-quicksight-dataset-datasetdaterangefiltercondition-includeminimum
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DataSetDateRangeFilterCondition')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IncludeMaximum,

        [Parameter(Mandatory = $false)]
        $RangeMinimum,

        [Parameter(Mandatory = $false)]
        $RangeMaximum,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IncludeMinimum

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DataSetDateRangeFilterCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
