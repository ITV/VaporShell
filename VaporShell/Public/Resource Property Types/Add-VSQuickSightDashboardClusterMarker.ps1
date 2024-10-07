function Add-VSQuickSightDashboardClusterMarker {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ClusterMarker resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ClusterMarker resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-clustermarker.html

    .PARAMETER SimpleClusterMarker
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-clustermarker.html#cfn-quicksight-dashboard-clustermarker-simpleclustermarker
        UpdateType: Mutable
        Type: SimpleClusterMarker

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ClusterMarker')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SimpleClusterMarker
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ClusterMarker'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
