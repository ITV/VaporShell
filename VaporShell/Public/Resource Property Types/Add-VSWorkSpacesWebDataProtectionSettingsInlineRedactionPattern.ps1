function Add-VSWorkSpacesWebDataProtectionSettingsInlineRedactionPattern {
    <#
    .SYNOPSIS
        Adds an AWS::WorkSpacesWeb::DataProtectionSettings.InlineRedactionPattern resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkSpacesWeb::DataProtectionSettings.InlineRedactionPattern resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionpattern.html

    .PARAMETER EnforcedUrls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionpattern.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionpattern-enforcedurls
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ConfidenceLevel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionpattern.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionpattern-confidencelevel
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER CustomPattern
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionpattern.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionpattern-custompattern
        UpdateType: Mutable
        Type: CustomPattern

    .PARAMETER ExemptUrls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionpattern.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionpattern-exempturls
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER BuiltInPatternId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionpattern.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionpattern-builtinpatternid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RedactionPlaceHolder
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-inlineredactionpattern.html#cfn-workspacesweb-dataprotectionsettings-inlineredactionpattern-redactionplaceholder
        UpdateType: Mutable
        Type: RedactionPlaceHolder

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkSpacesWeb.DataProtectionSettings.InlineRedactionPattern')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EnforcedUrls,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ConfidenceLevel,

        [Parameter(Mandatory = $false)]
        $CustomPattern,

        [Parameter(Mandatory = $false)]
        $ExemptUrls,

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
        $BuiltInPatternId,

        [Parameter(Mandatory = $true)]
        $RedactionPlaceHolder

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkSpacesWeb.DataProtectionSettings.InlineRedactionPattern'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
