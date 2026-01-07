function Add-VSQuickSightDataSetDataSetStringComparisonFilterCondition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DataSetStringComparisonFilterCondition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DataSetStringComparisonFilterCondition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetstringcomparisonfiltercondition.html

    .PARAMETER Operator
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetstringcomparisonfiltercondition.html#cfn-quicksight-dataset-datasetstringcomparisonfiltercondition-operator
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Value
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetstringcomparisonfiltercondition.html#cfn-quicksight-dataset-datasetstringcomparisonfiltercondition-value
        UpdateType: Mutable
        Type: DataSetStringFilterValue

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DataSetStringComparisonFilterCondition')]
    [CmdletBinding()]

    Param
    (
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
        $Operator,

        [Parameter(Mandatory = $false)]
        $Value

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DataSetStringComparisonFilterCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
