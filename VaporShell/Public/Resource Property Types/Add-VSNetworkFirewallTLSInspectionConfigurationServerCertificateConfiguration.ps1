function Add-VSNetworkFirewallTLSInspectionConfigurationServerCertificateConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::TLSInspectionConfiguration.ServerCertificateConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::TLSInspectionConfiguration.ServerCertificateConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration.html

    .PARAMETER CertificateAuthorityArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration-certificateauthorityarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CheckCertificateRevocationStatus
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration-checkcertificaterevocationstatus
        UpdateType: Mutable
        Type: CheckCertificateRevocationStatus

    .PARAMETER Scopes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration-scopes
        UpdateType: Mutable
        Type: List
        ItemType: ServerCertificateScope
        DuplicatesAllowed: True

    .PARAMETER ServerCertificates
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-servercertificateconfiguration-servercertificates
        UpdateType: Mutable
        Type: List
        ItemType: ServerCertificate
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CertificateAuthorityArn,
        [parameter(Mandatory = $false)]
        $CheckCertificateRevocationStatus,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateScope"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Scopes,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.TLSInspectionConfiguration.ServerCertificate"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ServerCertificates
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
