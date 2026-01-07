function Add-VSIoTAccountAuditConfigurationCertExpirationCheckCustomConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::AccountAuditConfiguration.CertExpirationCheckCustomConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoT::AccountAuditConfiguration.CertExpirationCheckCustomConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-certexpirationcheckcustomconfiguration.html

    .PARAMETER CertExpirationThresholdInDays
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-certexpirationcheckcustomconfiguration.html#cfn-iot-accountauditconfiguration-certexpirationcheckcustomconfiguration-certexpirationthresholdindays
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoT.AccountAuditConfiguration.CertExpirationCheckCustomConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CertExpirationThresholdInDays

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.AccountAuditConfiguration.CertExpirationCheckCustomConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
