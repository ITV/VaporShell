function Add-VSConnectWorkspaceWorkspaceThemeConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::Workspace.WorkspaceThemeConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::Workspace.WorkspaceThemeConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemeconfig.html

    .PARAMETER Palette
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemeconfig.html#cfn-connect-workspace-workspacethemeconfig-palette
        UpdateType: Mutable
        Type: WorkspaceThemePalette

    .PARAMETER Typography
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemeconfig.html#cfn-connect-workspace-workspacethemeconfig-typography
        UpdateType: Mutable
        Type: WorkspaceThemeTypography

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.Workspace.WorkspaceThemeConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Palette,

        [Parameter(Mandatory = $false)]
        $Typography

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.Workspace.WorkspaceThemeConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
