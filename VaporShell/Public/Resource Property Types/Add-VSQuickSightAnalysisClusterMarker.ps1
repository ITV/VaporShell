function Add-VSQuickSightAnalysisClusterMarker {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ClusterMarker resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ClusterMarker resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-clustermarker.html

    .PARAMETER SimpleClusterMarker
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-clustermarker.html#cfn-quicksight-analysis-clustermarker-simpleclustermarker
        UpdateType: Mutable
        Type: SimpleClusterMarker

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ClusterMarker')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ClusterMarker'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
