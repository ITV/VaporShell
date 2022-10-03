function Add-VSQuickSightThemeTileLayoutStyle {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Theme.TileLayoutStyle resource property to the template. The display options for the layout of tiles on a sheet.

    .DESCRIPTION
        Adds an AWS::QuickSight::Theme.TileLayoutStyle resource property to the template.
The display options for the layout of tiles on a sheet.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-tilelayoutstyle.html

    .PARAMETER Gutter
        The gutter settings that apply between tiles.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-tilelayoutstyle.html#cfn-quicksight-theme-tilelayoutstyle-gutter
        UpdateType: Mutable
        Type: GutterStyle

    .PARAMETER Margin
        The margin settings that apply around the outside edge of sheets.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-tilelayoutstyle.html#cfn-quicksight-theme-tilelayoutstyle-margin
        UpdateType: Mutable
        Type: MarginStyle

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Theme.TileLayoutStyle')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Gutter,
        [parameter(Mandatory = $false)]
        $Margin
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Theme.TileLayoutStyle'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
