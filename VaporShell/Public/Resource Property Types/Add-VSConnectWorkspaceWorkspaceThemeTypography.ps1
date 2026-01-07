function Add-VSConnectWorkspaceWorkspaceThemeTypography {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::Workspace.WorkspaceThemeTypography resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::Workspace.WorkspaceThemeTypography resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemetypography.html

    .PARAMETER FontFamily
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-workspace-workspacethemetypography.html#cfn-connect-workspace-workspacethemetypography-fontfamily
        UpdateType: Mutable
        Type: FontFamily

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.Workspace.WorkspaceThemeTypography')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FontFamily

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.Workspace.WorkspaceThemeTypography'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
