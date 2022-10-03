function Add-VSACMPCACertificateQualifier {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::Certificate.Qualifier resource property to the template. Defines a PolicyInformation qualifier. ACM Private CA supports the certification practice statement (CPS qualifier: https://tools.ietf.org/html/rfc5280#section-4.2.1.4 defined in RFC 5280.

    .DESCRIPTION
        Adds an AWS::ACMPCA::Certificate.Qualifier resource property to the template.
Defines a PolicyInformation qualifier. ACM Private CA supports the certification practice statement (CPS qualifier: https://tools.ietf.org/html/rfc5280#section-4.2.1.4 defined in RFC 5280.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-qualifier.html

    .PARAMETER CpsUri
        Contains a pointer to a certification practice statement CPS published by the CA.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-qualifier.html#cfn-acmpca-certificate-qualifier-cpsuri
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.Certificate.Qualifier')]
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
        $CpsUri
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.Certificate.Qualifier'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
