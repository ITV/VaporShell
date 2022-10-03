function Add-VSACMPCACertificateAuthorityCsrExtensions {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::CertificateAuthority.CsrExtensions resource property to the template. Describes the certificate extensions to be added to the certificate signing request (CSR.

    .DESCRIPTION
        Adds an AWS::ACMPCA::CertificateAuthority.CsrExtensions resource property to the template.
Describes the certificate extensions to be added to the certificate signing request (CSR.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-csrextensions.html

    .PARAMETER KeyUsage
        Indicates the purpose of the certificate and of the key contained in the certificate.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-csrextensions.html#cfn-acmpca-certificateauthority-csrextensions-keyusage
        UpdateType: Immutable
        Type: KeyUsage

    .PARAMETER SubjectInformationAccess
        For CA certificates, provides a path to additional information pertaining to the CA, such as revocation and policy. For more information, see Subject Information Access: https://tools.ietf.org/html/rfc5280#section-4.2.2.2 in RFC 5280.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-csrextensions.html#cfn-acmpca-certificateauthority-csrextensions-subjectinformationaccess
        UpdateType: Immutable
        Type: List
        ItemType: AccessDescription

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.CertificateAuthority.CsrExtensions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $KeyUsage,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ACMPCA.CertificateAuthority.AccessDescription"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SubjectInformationAccess
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.CertificateAuthority.CsrExtensions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
