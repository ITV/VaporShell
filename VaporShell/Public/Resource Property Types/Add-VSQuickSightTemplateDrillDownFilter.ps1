function Add-VSQuickSightTemplateDrillDownFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DrillDownFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DrillDownFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-drilldownfilter.html

    .PARAMETER NumericEqualityFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-drilldownfilter.html#cfn-quicksight-template-drilldownfilter-numericequalityfilter
        UpdateType: Mutable
        Type: NumericEqualityDrillDownFilter

    .PARAMETER TimeRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-drilldownfilter.html#cfn-quicksight-template-drilldownfilter-timerangefilter
        UpdateType: Mutable
        Type: TimeRangeDrillDownFilter

    .PARAMETER CategoryFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-drilldownfilter.html#cfn-quicksight-template-drilldownfilter-categoryfilter
        UpdateType: Mutable
        Type: CategoryDrillDownFilter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DrillDownFilter')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NumericEqualityFilter,

        [Parameter(Mandatory = $false)]
        $TimeRangeFilter,

        [Parameter(Mandatory = $false)]
        $CategoryFilter

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DrillDownFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
