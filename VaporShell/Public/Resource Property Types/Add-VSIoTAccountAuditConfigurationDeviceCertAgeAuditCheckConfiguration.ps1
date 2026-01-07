function Add-VSIoTAccountAuditConfigurationDeviceCertAgeAuditCheckConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::AccountAuditConfiguration.DeviceCertAgeAuditCheckConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoT::AccountAuditConfiguration.DeviceCertAgeAuditCheckConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertageauditcheckconfiguration.html

    .PARAMETER Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertageauditcheckconfiguration.html#cfn-iot-accountauditconfiguration-devicecertageauditcheckconfiguration-configuration
        UpdateType: Mutable
        Type: CertAgeCheckCustomConfiguration

    .PARAMETER Enabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-devicecertageauditcheckconfiguration.html#cfn-iot-accountauditconfiguration-devicecertageauditcheckconfiguration-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoT.AccountAuditConfiguration.DeviceCertAgeAuditCheckConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Configuration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.AccountAuditConfiguration.DeviceCertAgeAuditCheckConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
