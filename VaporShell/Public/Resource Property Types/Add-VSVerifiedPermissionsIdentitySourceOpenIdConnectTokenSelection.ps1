function Add-VSVerifiedPermissionsIdentitySourceOpenIdConnectTokenSelection {
    <#
    .SYNOPSIS
        Adds an AWS::VerifiedPermissions::IdentitySource.OpenIdConnectTokenSelection resource property to the template.

    .DESCRIPTION
        Adds an AWS::VerifiedPermissions::IdentitySource.OpenIdConnectTokenSelection resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnecttokenselection.html

    .PARAMETER AccessTokenOnly
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnecttokenselection.html#cfn-verifiedpermissions-identitysource-openidconnecttokenselection-accesstokenonly
        UpdateType: Mutable
        Type: OpenIdConnectAccessTokenConfiguration

    .PARAMETER IdentityTokenOnly
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnecttokenselection.html#cfn-verifiedpermissions-identitysource-openidconnecttokenselection-identitytokenonly
        UpdateType: Mutable
        Type: OpenIdConnectIdentityTokenConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.VerifiedPermissions.IdentitySource.OpenIdConnectTokenSelection')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AccessTokenOnly,

        [Parameter(Mandatory = $false)]
        $IdentityTokenOnly

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.VerifiedPermissions.IdentitySource.OpenIdConnectTokenSelection'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
