function Add-VSQuickSightDashboardVisibleRangeOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.VisibleRangeOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.VisibleRangeOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visiblerangeoptions.html

    .PARAMETER PercentRange
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visiblerangeoptions.html#cfn-quicksight-dashboard-visiblerangeoptions-percentrange
        UpdateType: Mutable
        Type: PercentVisibleRange

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.VisibleRangeOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PercentRange
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.VisibleRangeOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
