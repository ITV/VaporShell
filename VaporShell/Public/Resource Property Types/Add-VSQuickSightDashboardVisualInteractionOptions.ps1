function Add-VSQuickSightDashboardVisualInteractionOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.VisualInteractionOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.VisualInteractionOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualinteractionoptions.html

    .PARAMETER ContextMenuOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualinteractionoptions.html#cfn-quicksight-dashboard-visualinteractionoptions-contextmenuoption
        UpdateType: Mutable
        Type: ContextMenuOption

    .PARAMETER VisualMenuOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualinteractionoptions.html#cfn-quicksight-dashboard-visualinteractionoptions-visualmenuoption
        UpdateType: Mutable
        Type: VisualMenuOption

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.VisualInteractionOptions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ContextMenuOption,

        [Parameter(Mandatory = $false)]
        $VisualMenuOption

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.VisualInteractionOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
