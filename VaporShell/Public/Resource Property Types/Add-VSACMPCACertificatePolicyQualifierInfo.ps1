function Add-VSACMPCACertificatePolicyQualifierInfo {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::Certificate.PolicyQualifierInfo resource property to the template. Modifies the CertPolicyId of a PolicyInformation object with a qualifier. ACM Private CA supports the certification practice statement (CPS qualifier.

    .DESCRIPTION
        Adds an AWS::ACMPCA::Certificate.PolicyQualifierInfo resource property to the template.
Modifies the CertPolicyId of a PolicyInformation object with a qualifier. ACM Private CA supports the certification practice statement (CPS qualifier.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-policyqualifierinfo.html

    .PARAMETER PolicyQualifierId
        Identifies the qualifier modifying a CertPolicyId.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-policyqualifierinfo.html#cfn-acmpca-certificate-policyqualifierinfo-policyqualifierid
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER Qualifier
        Defines the qualifier type. ACM Private CA supports the use of a URI for a CPS qualifier in this field.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-policyqualifierinfo.html#cfn-acmpca-certificate-policyqualifierinfo-qualifier
        UpdateType: Immutable
        Type: Qualifier

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.Certificate.PolicyQualifierInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PolicyQualifierId,
        [parameter(Mandatory = $true)]
        $Qualifier
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.Certificate.PolicyQualifierInfo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
