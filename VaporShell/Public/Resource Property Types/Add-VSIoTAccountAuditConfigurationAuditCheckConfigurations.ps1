function Add-VSIoTAccountAuditConfigurationAuditCheckConfigurations {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::AccountAuditConfiguration.AuditCheckConfigurations resource property to the template. The types of audit checks that can be performed.

    .DESCRIPTION
        Adds an AWS::IoT::AccountAuditConfiguration.AuditCheckConfigurations resource property to the template.
The types of audit checks that can be performed.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html

    .PARAMETER AuthenticatedCognitoRoleOverlyPermissiveCheck
        Checks the permissiveness of an authenticated Amazon Cognito identity pool role. For this check, AWS IoT Device Defender audits all Amazon Cognito identity pools that have been used to connect to the AWS IoT message broker during the 31 days before the audit is performed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-authenticatedcognitoroleoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER CaCertificateExpiringCheck
        Checks if a CA certificate is expiring. This check applies to CA certificates expiring within 30 days or that have expired.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-cacertificateexpiringcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER CaCertificateKeyQualityCheck
        Checks the quality of the CA certificate key. The quality checks if the key is in a valid format, not expired, and if the key meets a minimum required size. This check applies to CA certificates that are ACTIVE or PENDING_TRANSFER.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-cacertificatekeyqualitycheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER ConflictingClientIdsCheck
        Checks if multiple devices connect using the same client ID.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-conflictingclientidscheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER DeviceCertificateExpiringCheck
        Checks if a device certificate is expiring. This check applies to device certificates expiring within 30 days or that have expired.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificateexpiringcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER DeviceCertificateKeyQualityCheck
        Checks the quality of the device certificate key. The quality checks if the key is in a valid format, not expired, signed by a registered certificate authority, and if the key meets a minimum required size.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificatekeyqualitycheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER DeviceCertificateSharedCheck
        Checks if multiple concurrent connections use the same X.509 certificate to authenticate with AWS IoT.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-devicecertificatesharedcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER IotPolicyOverlyPermissiveCheck
        Checks the permissiveness of a policy attached to an authenticated Amazon Cognito identity pool role.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotpolicyoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER IotRoleAliasAllowsAccessToUnusedServicesCheck
        Checks if a role alias has access to services that haven't been used for the AWS IoT device in the last year.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotrolealiasallowsaccesstounusedservicescheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER IotRoleAliasOverlyPermissiveCheck
        Checks if the temporary credentials provided by AWS IoT role aliases are overly permissive.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-iotrolealiasoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER LoggingDisabledCheck
        Checks if AWS IoT logs are disabled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-loggingdisabledcheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER RevokedCaCertificateStillActiveCheck
        Checks if a revoked CA certificate is still active.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-revokedcacertificatestillactivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER RevokedDeviceCertificateStillActiveCheck
        Checks if a revoked device certificate is still active.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-revokeddevicecertificatestillactivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .PARAMETER UnauthenticatedCognitoRoleOverlyPermissiveCheck
        Checks if policy attached to an unauthenticated Amazon Cognito identity pool role is too permissive.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditcheckconfigurations.html#cfn-iot-accountauditconfiguration-auditcheckconfigurations-unauthenticatedcognitoroleoverlypermissivecheck
        UpdateType: Mutable
        Type: AuditCheckConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.AccountAuditConfiguration.AuditCheckConfigurations')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AuthenticatedCognitoRoleOverlyPermissiveCheck,
        [parameter(Mandatory = $false)]
        $CaCertificateExpiringCheck,
        [parameter(Mandatory = $false)]
        $CaCertificateKeyQualityCheck,
        [parameter(Mandatory = $false)]
        $ConflictingClientIdsCheck,
        [parameter(Mandatory = $false)]
        $DeviceCertificateExpiringCheck,
        [parameter(Mandatory = $false)]
        $DeviceCertificateKeyQualityCheck,
        [parameter(Mandatory = $false)]
        $DeviceCertificateSharedCheck,
        [parameter(Mandatory = $false)]
        $IotPolicyOverlyPermissiveCheck,
        [parameter(Mandatory = $false)]
        $IotRoleAliasAllowsAccessToUnusedServicesCheck,
        [parameter(Mandatory = $false)]
        $IotRoleAliasOverlyPermissiveCheck,
        [parameter(Mandatory = $false)]
        $LoggingDisabledCheck,
        [parameter(Mandatory = $false)]
        $RevokedCaCertificateStillActiveCheck,
        [parameter(Mandatory = $false)]
        $RevokedDeviceCertificateStillActiveCheck,
        [parameter(Mandatory = $false)]
        $UnauthenticatedCognitoRoleOverlyPermissiveCheck
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
