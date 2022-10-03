function Add-VSQuickSightThemeSheetStyle {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Theme.SheetStyle resource property to the template. The theme display options for sheets.

    .DESCRIPTION
        Adds an AWS::QuickSight::Theme.SheetStyle resource property to the template.
The theme display options for sheets.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-sheetstyle.html

    .PARAMETER TileLayout
        The layout options for tiles.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-sheetstyle.html#cfn-quicksight-theme-sheetstyle-tilelayout
        UpdateType: Mutable
        Type: TileLayoutStyle

    .PARAMETER Tile
        The display options for tiles.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-sheetstyle.html#cfn-quicksight-theme-sheetstyle-tile
        UpdateType: Mutable
        Type: TileStyle

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Theme.SheetStyle')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TileLayout,
        [parameter(Mandatory = $false)]
        $Tile
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Theme.SheetStyle'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
