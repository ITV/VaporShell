function Add-VSConnectWorkspaceWorkspaceThemePalette {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::Workspace.WorkspaceThemePalette resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::Workspace.WorkspaceThemePalette resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemepalette.html

    .PARAMETER Navigation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemepalette.html#cfn-connect-workspace-workspacethemepalette-navigation
        UpdateType: Mutable
        Type: PaletteNavigation

    .PARAMETER Header
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemepalette.html#cfn-connect-workspace-workspacethemepalette-header
        UpdateType: Mutable
        Type: PaletteHeader

    .PARAMETER Canvas
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemepalette.html#cfn-connect-workspace-workspacethemepalette-canvas
        UpdateType: Mutable
        Type: PaletteCanvas

    .PARAMETER Primary
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemepalette.html#cfn-connect-workspace-workspacethemepalette-primary
        UpdateType: Mutable
        Type: PalettePrimary

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.Workspace.WorkspaceThemePalette')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Navigation,

        [Parameter(Mandatory = $false)]
        $Header,

        [Parameter(Mandatory = $false)]
        $Canvas,

        [Parameter(Mandatory = $false)]
        $Primary

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.Workspace.WorkspaceThemePalette'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
