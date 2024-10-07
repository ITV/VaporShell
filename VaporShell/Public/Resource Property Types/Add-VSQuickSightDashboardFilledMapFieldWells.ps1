function Add-VSQuickSightDashboardFilledMapFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.FilledMapFieldWells resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.FilledMapFieldWells resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapfieldwells.html

    .PARAMETER FilledMapAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapfieldwells.html#cfn-quicksight-dashboard-filledmapfieldwells-filledmapaggregatedfieldwells
        UpdateType: Mutable
        Type: FilledMapAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.FilledMapFieldWells')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FilledMapAggregatedFieldWells
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.FilledMapFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
