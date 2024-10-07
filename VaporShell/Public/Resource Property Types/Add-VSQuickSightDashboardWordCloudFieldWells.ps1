function Add-VSQuickSightDashboardWordCloudFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.WordCloudFieldWells resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.WordCloudFieldWells resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudfieldwells.html

    .PARAMETER WordCloudAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudfieldwells.html#cfn-quicksight-dashboard-wordcloudfieldwells-wordcloudaggregatedfieldwells
        UpdateType: Mutable
        Type: WordCloudAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.WordCloudFieldWells')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $WordCloudAggregatedFieldWells
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.WordCloudFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
