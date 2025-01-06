function Add-VSQuickSightDashboardPluginVisualTableQuerySort {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.PluginVisualTableQuerySort resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.PluginVisualTableQuerySort resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualtablequerysort.html

    .PARAMETER ItemsLimitConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualtablequerysort.html#cfn-quicksight-dashboard-pluginvisualtablequerysort-itemslimitconfiguration
        UpdateType: Mutable
        Type: PluginVisualItemsLimitConfiguration

    .PARAMETER RowSort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualtablequerysort.html#cfn-quicksight-dashboard-pluginvisualtablequerysort-rowsort
        UpdateType: Mutable
        Type: List
        ItemType: FieldSortOptions
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.PluginVisualTableQuerySort')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ItemsLimitConfiguration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Dashboard.FieldSortOptions"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RowSort

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.PluginVisualTableQuerySort'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
