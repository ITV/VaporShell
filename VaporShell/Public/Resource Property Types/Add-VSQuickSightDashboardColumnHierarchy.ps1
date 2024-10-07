function Add-VSQuickSightDashboardColumnHierarchy {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ColumnHierarchy resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ColumnHierarchy resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnhierarchy.html

    .PARAMETER DateTimeHierarchy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnhierarchy.html#cfn-quicksight-dashboard-columnhierarchy-datetimehierarchy
        UpdateType: Mutable
        Type: DateTimeHierarchy

    .PARAMETER ExplicitHierarchy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnhierarchy.html#cfn-quicksight-dashboard-columnhierarchy-explicithierarchy
        UpdateType: Mutable
        Type: ExplicitHierarchy

    .PARAMETER PredefinedHierarchy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnhierarchy.html#cfn-quicksight-dashboard-columnhierarchy-predefinedhierarchy
        UpdateType: Mutable
        Type: PredefinedHierarchy

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ColumnHierarchy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DateTimeHierarchy,
        [parameter(Mandatory = $false)]
        $ExplicitHierarchy,
        [parameter(Mandatory = $false)]
        $PredefinedHierarchy
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ColumnHierarchy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
