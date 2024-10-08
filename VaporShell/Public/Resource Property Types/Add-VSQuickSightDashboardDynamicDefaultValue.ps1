function Add-VSQuickSightDashboardDynamicDefaultValue {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DynamicDefaultValue resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DynamicDefaultValue resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dynamicdefaultvalue.html

    .PARAMETER GroupNameColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dynamicdefaultvalue.html#cfn-quicksight-dashboard-dynamicdefaultvalue-groupnamecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER DefaultValueColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dynamicdefaultvalue.html#cfn-quicksight-dashboard-dynamicdefaultvalue-defaultvaluecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER UserNameColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dynamicdefaultvalue.html#cfn-quicksight-dashboard-dynamicdefaultvalue-usernamecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DynamicDefaultValue')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $GroupNameColumn,

        [Parameter(Mandatory = $true)]
        $DefaultValueColumn,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.DynamicDefaultValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
