function Add-VSIoTAccountAuditConfigurationAuditCheckConfigurations {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::AccountAuditConfiguration.AuditCheckConfigurations resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoT::AccountAuditConfiguration.AuditCheckConfigurations resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html

    .PARAMETER IotRoleAliasOverlyPermissiveCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotrolealiasoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER DeviceCertificateSharedCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificatesharedcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER ConflictingClientIdsCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-conflictingclientidscheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER IntermediateCaRevokedForActiveDeviceCertificatesCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-intermediatecarevokedforactivedevicecertificatescheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER IotRoleAliasAllowsAccessToUnusedServicesCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotrolealiasallowsaccesstounusedservicescheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER RevokedCaCertificateStillActiveCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-revokedcacertificatestillactivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER LoggingDisabledCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-loggingdisabledcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER UnauthenticatedCognitoRoleOverlyPermissiveCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-unauthenticatedcognitoroleoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER AuthenticatedCognitoRoleOverlyPermissiveCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-authenticatedcognitoroleoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER CaCertificateExpiringCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-cacertificateexpiringcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER DeviceCertificateExpiringCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificateexpiringcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER IoTPolicyPotentialMisConfigurationCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotpolicypotentialmisconfigurationcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER IotPolicyOverlyPermissiveCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotpolicyoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER RevokedDeviceCertificateStillActiveCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-revokeddevicecertificatestillactivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER DeviceCertificateKeyQualityCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificatekeyqualitycheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER CaCertificateKeyQualityCheck
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-cacertificatekeyqualitycheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoT.AccountAuditConfiguration.AuditCheckConfigurations')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IotRoleAliasOverlyPermissiveCheck,

        [Parameter(Mandatory = $false)]
        $DeviceCertificateSharedCheck,

        [Parameter(Mandatory = $false)]
        $ConflictingClientIdsCheck,

        [Parameter(Mandatory = $false)]
        $IntermediateCaRevokedForActiveDeviceCertificatesCheck,

        [Parameter(Mandatory = $false)]
        $IotRoleAliasAllowsAccessToUnusedServicesCheck,

        [Parameter(Mandatory = $false)]
        $RevokedCaCertificateStillActiveCheck,

        [Parameter(Mandatory = $false)]
        $LoggingDisabledCheck,

        [Parameter(Mandatory = $false)]
        $UnauthenticatedCognitoRoleOverlyPermissiveCheck,

        [Parameter(Mandatory = $false)]
        $AuthenticatedCognitoRoleOverlyPermissiveCheck,

        [Parameter(Mandatory = $false)]
        $CaCertificateExpiringCheck,

        [Parameter(Mandatory = $false)]
        $DeviceCertificateExpiringCheck,

        [Parameter(Mandatory = $false)]
        $IoTPolicyPotentialMisConfigurationCheck,

        [Parameter(Mandatory = $false)]
        $IotPolicyOverlyPermissiveCheck,

        [Parameter(Mandatory = $false)]
        $RevokedDeviceCertificateStillActiveCheck,

        [Parameter(Mandatory = $false)]
        $DeviceCertificateKeyQualityCheck,

        [Parameter(Mandatory = $false)]
        $CaCertificateKeyQualityCheck

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.AccountAuditConfiguration.AuditCheckConfigurations'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
