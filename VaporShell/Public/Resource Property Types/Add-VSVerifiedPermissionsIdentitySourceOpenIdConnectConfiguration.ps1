function Add-VSVerifiedPermissionsIdentitySourceOpenIdConnectConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::VerifiedPermissions::IdentitySource.OpenIdConnectConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::VerifiedPermissions::IdentitySource.OpenIdConnectConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html

    .PARAMETER Issuer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-issuer
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TokenSelection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-tokenselection
        UpdateType: Mutable
        Type: OpenIdConnectTokenSelection

    .PARAMETER GroupConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-groupconfiguration
        UpdateType: Mutable
        Type: OpenIdConnectGroupConfiguration

    .PARAMETER EntityIdPrefix
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-entityidprefix
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.VerifiedPermissions.IdentitySource.OpenIdConnectConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Issuer,

        [Parameter(Mandatory = $true)]
        $TokenSelection,

        [Parameter(Mandatory = $false)]
        $GroupConfiguration,

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
        $EntityIdPrefix

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.VerifiedPermissions.IdentitySource.OpenIdConnectConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
