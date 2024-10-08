function Add-VSQuickSightTemplateClusterMarker {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.ClusterMarker resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.ClusterMarker resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-clustermarker.html

    .PARAMETER SimpleClusterMarker
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-clustermarker.html#cfn-quicksight-template-clustermarker-simpleclustermarker
        UpdateType: Mutable
        Type: SimpleClusterMarker

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.ClusterMarker')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.ClusterMarker'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
