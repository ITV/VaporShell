function Add-VSACMPCACertificateApiPassthrough {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::Certificate.ApiPassthrough resource property to the template. Contains X.509 certificate information to be placed in an issued certificate. An APIPassthrough or APICSRPassthrough template variant must be selected, or else this parameter is ignored.

    .DESCRIPTION
        Adds an AWS::ACMPCA::Certificate.ApiPassthrough resource property to the template.
Contains X.509 certificate information to be placed in an issued certificate. An APIPassthrough or APICSRPassthrough template variant must be selected, or else this parameter is ignored.

If conflicting or duplicate certificate information is supplied from other sources, ACM Private CA applies order of operation rules: https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html#template-order-of-operations to determine what information is used.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html

    .PARAMETER Extensions
        Specifies X.509 extension information for a certificate.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html#cfn-acmpca-certificate-apipassthrough-extensions
        UpdateType: Immutable
        Type: Extensions

    .PARAMETER Subject
        Contains information about the certificate subject. The Subject field in the certificate identifies the entity that owns or controls the public key in the certificate. The entity can be a user, computer, device, or service. The Subject must contain an X.500 distinguished name DN. A DN is a sequence of relative distinguished names RDNs. The RDNs are separated by commas in the certificate.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html#cfn-acmpca-certificate-apipassthrough-subject
        UpdateType: Immutable
        Type: Subject

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.Certificate.ApiPassthrough')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Extensions,
        [parameter(Mandatory = $false)]
        $Subject
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.Certificate.ApiPassthrough'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
