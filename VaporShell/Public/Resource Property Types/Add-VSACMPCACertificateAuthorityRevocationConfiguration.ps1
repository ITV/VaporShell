function Add-VSACMPCACertificateAuthorityRevocationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::CertificateAuthority.RevocationConfiguration resource property to the template. Certificate revocation information used by the CreateCertificateAuthority and UpdateCertificateAuthority actions. Your private certificate authority (CA can configure Online Certificate Status Protocol (OCSP support and/or maintain a certificate revocation list (CRL. OCSP returns validation information about certificates as requested by clients, and a CRL contains an updated list of certificates revoked by your CA. For more information, see RevokeCertificate: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html.

    .DESCRIPTION
        Adds an AWS::ACMPCA::CertificateAuthority.RevocationConfiguration resource property to the template.
Certificate revocation information used by the CreateCertificateAuthority and UpdateCertificateAuthority actions. Your private certificate authority (CA can configure Online Certificate Status Protocol (OCSP support and/or maintain a certificate revocation list (CRL. OCSP returns validation information about certificates as requested by clients, and a CRL contains an updated list of certificates revoked by your CA. For more information, see RevokeCertificate: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html

    .PARAMETER CrlConfiguration
        Configuration of the certificate revocation list CRL, if any, maintained by your private CA.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html#cfn-acmpca-certificateauthority-revocationconfiguration-crlconfiguration
        UpdateType: Mutable
        Type: CrlConfiguration

    .PARAMETER OcspConfiguration
        Configuration of Online Certificate Status Protocol OCSP support, if any, maintained by your private CA.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html#cfn-acmpca-certificateauthority-revocationconfiguration-ocspconfiguration
        UpdateType: Mutable
        Type: OcspConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.CertificateAuthority.RevocationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CrlConfiguration,
        [parameter(Mandatory = $false)]
        $OcspConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.CertificateAuthority.RevocationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
