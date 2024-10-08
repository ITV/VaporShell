function Add-VSQuickSightDashboardParameterSelectableValues {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ParameterSelectableValues resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ParameterSelectableValues resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterselectablevalues.html

    .PARAMETER LinkToDataSetColumn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterselectablevalues.html#cfn-quicksight-dashboard-parameterselectablevalues-linktodatasetcolumn
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER Values
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterselectablevalues.html#cfn-quicksight-dashboard-parameterselectablevalues-values
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ParameterSelectableValues')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LinkToDataSetColumn,

        [Parameter(Mandatory = $false)]
        $Values

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ParameterSelectableValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
