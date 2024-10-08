function Add-VSQuickSightDashboardFilledMapConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.FilledMapConditionalFormattingOption resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.FilledMapConditionalFormattingOption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapconditionalformattingoption.html

    .PARAMETER Shape
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapconditionalformattingoption.html#cfn-quicksight-dashboard-filledmapconditionalformattingoption-shape
        UpdateType: Mutable
        Type: FilledMapShapeConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.FilledMapConditionalFormattingOption')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Shape

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.FilledMapConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
