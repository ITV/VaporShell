function Add-VSQuickSightDashboardDashboardSourceEntity {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DashboardSourceEntity resource property to the template. Dashboard source entity.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DashboardSourceEntity resource property to the template.
Dashboard source entity.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardsourceentity.html

    .PARAMETER SourceTemplate
        Source template.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardsourceentity.html#cfn-quicksight-dashboard-dashboardsourceentity-sourcetemplate
        UpdateType: Mutable
        Type: DashboardSourceTemplate

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DashboardSourceEntity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SourceTemplate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.DashboardSourceEntity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
