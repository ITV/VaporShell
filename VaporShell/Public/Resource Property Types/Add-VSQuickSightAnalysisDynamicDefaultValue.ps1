function Add-VSQuickSightAnalysisDynamicDefaultValue {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.DynamicDefaultValue resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.DynamicDefaultValue resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dynamicdefaultvalue.html

    .PARAMETER GroupNameColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dynamicdefaultvalue.html#cfn-quicksight-analysis-dynamicdefaultvalue-groupnamecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER DefaultValueColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dynamicdefaultvalue.html#cfn-quicksight-analysis-dynamicdefaultvalue-defaultvaluecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER UserNameColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dynamicdefaultvalue.html#cfn-quicksight-analysis-dynamicdefaultvalue-usernamecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.DynamicDefaultValue')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $GroupNameColumn,
        [parameter(Mandatory = $true)]
        $DefaultValueColumn,
        [parameter(Mandatory = $false)]
        $UserNameColumn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.DynamicDefaultValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
