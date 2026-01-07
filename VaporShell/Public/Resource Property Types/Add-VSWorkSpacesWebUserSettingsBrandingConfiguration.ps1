function Add-VSWorkSpacesWebUserSettingsBrandingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::WorkSpacesWeb::UserSettings.BrandingConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkSpacesWeb::UserSettings.BrandingConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html

    .PARAMETER FaviconMetadata
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-faviconmetadata
        UpdateType: Mutable
        Type: ImageMetadata

    .PARAMETER TermsOfService
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-termsofservice
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ColorTheme
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-colortheme
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LocalizedStrings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-localizedstrings
        UpdateType: Mutable
        Type: Map
        ItemType: LocalizedBrandingStrings

    .PARAMETER Wallpaper
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-wallpaper
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER WallpaperMetadata
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-wallpapermetadata
        UpdateType: Mutable
        Type: ImageMetadata

    .PARAMETER LogoMetadata
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-logometadata
        UpdateType: Mutable
        Type: ImageMetadata

    .PARAMETER Favicon
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-favicon
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Logo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-brandingconfiguration.html#cfn-workspacesweb-usersettings-brandingconfiguration-logo
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkSpacesWeb.UserSettings.BrandingConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FaviconMetadata,

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
        $TermsOfService,

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
        $ColorTheme,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WorkSpacesWeb.UserSettings.LocalizedBrandingStrings"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LocalizedStrings,

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
        $Wallpaper,

        [Parameter(Mandatory = $false)]
        $WallpaperMetadata,

        [Parameter(Mandatory = $false)]
        $LogoMetadata,

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
        $Favicon,

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
        $Logo

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkSpacesWeb.UserSettings.BrandingConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
