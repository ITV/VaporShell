function Add-VSQuickSightDashboardBodySectionContent {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.BodySectionContent resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.BodySectionContent resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectioncontent.html

    .PARAMETER Layout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectioncontent.html#cfn-quicksight-dashboard-bodysectioncontent-layout
        UpdateType: Mutable
        Type: SectionLayoutConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.BodySectionContent')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Layout

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.BodySectionContent'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
