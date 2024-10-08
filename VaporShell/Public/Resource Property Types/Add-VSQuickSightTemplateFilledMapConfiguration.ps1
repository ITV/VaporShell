function Add-VSQuickSightTemplateFilledMapConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.FilledMapConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.FilledMapConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconfiguration.html#cfn-quicksight-template-filledmapconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: FilledMapSortConfiguration

    .PARAMETER Legend
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconfiguration.html#cfn-quicksight-template-filledmapconfiguration-legend
        UpdateType: Mutable
        Type: LegendOptions

    .PARAMETER MapStyleOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconfiguration.html#cfn-quicksight-template-filledmapconfiguration-mapstyleoptions
        UpdateType: Mutable
        Type: GeospatialMapStyleOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconfiguration.html#cfn-quicksight-template-filledmapconfiguration-fieldwells
        UpdateType: Mutable
        Type: FilledMapFieldWells

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconfiguration.html#cfn-quicksight-template-filledmapconfiguration-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER WindowOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconfiguration.html#cfn-quicksight-template-filledmapconfiguration-windowoptions
        UpdateType: Mutable
        Type: GeospatialWindowOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.FilledMapConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SortConfiguration,

        [Parameter(Mandatory = $false)]
        $Legend,

        [Parameter(Mandatory = $false)]
        $MapStyleOptions,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $Tooltip,

        [Parameter(Mandatory = $false)]
        $WindowOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.FilledMapConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
