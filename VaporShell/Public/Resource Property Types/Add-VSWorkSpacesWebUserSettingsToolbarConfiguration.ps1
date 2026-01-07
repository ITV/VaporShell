function Add-VSWorkSpacesWebUserSettingsToolbarConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::WorkSpacesWeb::UserSettings.ToolbarConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkSpacesWeb::UserSettings.ToolbarConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html

    .PARAMETER ToolbarType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-toolbartype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER HiddenToolbarItems
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-hiddentoolbaritems
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER MaxDisplayResolution
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-maxdisplayresolution
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER VisualMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-visualmode
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkSpacesWeb.UserSettings.ToolbarConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ToolbarType,

        [Parameter(Mandatory = $false)]
        $HiddenToolbarItems,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxDisplayResolution,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VisualMode

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkSpacesWeb.UserSettings.ToolbarConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
