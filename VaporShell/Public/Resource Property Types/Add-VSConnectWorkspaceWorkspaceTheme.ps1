function Add-VSConnectWorkspaceWorkspaceTheme {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::Workspace.WorkspaceTheme resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::Workspace.WorkspaceTheme resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacetheme.html

    .PARAMETER Light
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacetheme.html#cfn-connect-workspace-workspacetheme-light
        UpdateType: Mutable
        Type: WorkspaceThemeConfig

    .PARAMETER Dark
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacetheme.html#cfn-connect-workspace-workspacetheme-dark
        UpdateType: Mutable
        Type: WorkspaceThemeConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.Workspace.WorkspaceTheme')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Light,

        [Parameter(Mandatory = $false)]
        $Dark

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.Workspace.WorkspaceTheme'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
