function Add-VSQuickSightDashboardDefaultInteractiveLayoutConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DefaultInteractiveLayoutConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DefaultInteractiveLayoutConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultinteractivelayoutconfiguration.html

    .PARAMETER FreeForm
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultinteractivelayoutconfiguration.html#cfn-quicksight-dashboard-defaultinteractivelayoutconfiguration-freeform
        UpdateType: Mutable
        Type: DefaultFreeFormLayoutConfiguration

    .PARAMETER Grid
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultinteractivelayoutconfiguration.html#cfn-quicksight-dashboard-defaultinteractivelayoutconfiguration-grid
        UpdateType: Mutable
        Type: DefaultGridLayoutConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DefaultInteractiveLayoutConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FreeForm,

        [Parameter(Mandatory = $false)]
        $Grid

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.DefaultInteractiveLayoutConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
