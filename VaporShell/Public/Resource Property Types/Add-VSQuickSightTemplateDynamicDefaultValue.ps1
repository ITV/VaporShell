function Add-VSQuickSightTemplateDynamicDefaultValue {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DynamicDefaultValue resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DynamicDefaultValue resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html

    .PARAMETER GroupNameColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html#cfn-quicksight-template-dynamicdefaultvalue-groupnamecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER DefaultValueColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html#cfn-quicksight-template-dynamicdefaultvalue-defaultvaluecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER UserNameColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dynamicdefaultvalue.html#cfn-quicksight-template-dynamicdefaultvalue-usernamecolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DynamicDefaultValue')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DynamicDefaultValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
