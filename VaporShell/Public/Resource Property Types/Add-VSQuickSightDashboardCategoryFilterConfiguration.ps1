function Add-VSQuickSightDashboardCategoryFilterConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.CategoryFilterConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.CategoryFilterConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryfilterconfiguration.html

    .PARAMETER CustomFilterListConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryfilterconfiguration.html#cfn-quicksight-dashboard-categoryfilterconfiguration-customfilterlistconfiguration
        UpdateType: Mutable
        Type: CustomFilterListConfiguration

    .PARAMETER CustomFilterConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryfilterconfiguration.html#cfn-quicksight-dashboard-categoryfilterconfiguration-customfilterconfiguration
        UpdateType: Mutable
        Type: CustomFilterConfiguration

    .PARAMETER FilterListConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-categoryfilterconfiguration.html#cfn-quicksight-dashboard-categoryfilterconfiguration-filterlistconfiguration
        UpdateType: Mutable
        Type: FilterListConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.CategoryFilterConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomFilterListConfiguration,
        [parameter(Mandatory = $false)]
        $CustomFilterConfiguration,
        [parameter(Mandatory = $false)]
        $FilterListConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.CategoryFilterConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
