function Add-VSACMPCACertificateAuthorityAccessDescription {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::CertificateAuthority.AccessDescription resource property to the template. Provides access information used by the authorityInfoAccess and subjectInfoAccess extensions described in RFC 5280: https://tools.ietf.org/html/rfc5280.

    .DESCRIPTION
        Adds an AWS::ACMPCA::CertificateAuthority.AccessDescription resource property to the template.
Provides access information used by the authorityInfoAccess and subjectInfoAccess extensions described in RFC 5280: https://tools.ietf.org/html/rfc5280.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessdescription.html

    .PARAMETER AccessMethod
        The type and format of AccessDescription information.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessdescription.html#cfn-acmpca-certificateauthority-accessdescription-accessmethod
        UpdateType: Immutable
        Type: AccessMethod

    .PARAMETER AccessLocation
        The location of AccessDescription information.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessdescription.html#cfn-acmpca-certificateauthority-accessdescription-accesslocation
        UpdateType: Immutable
        Type: GeneralName

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.CertificateAuthority.AccessDescription')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $AccessMethod,
        [parameter(Mandatory = $true)]
        $AccessLocation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.CertificateAuthority.AccessDescription'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
