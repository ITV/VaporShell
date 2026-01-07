function Add-VSObservabilityAdminOrganizationCentralizationRuleDestinationLogsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::OrganizationCentralizationRule.DestinationLogsConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::OrganizationCentralizationRule.DestinationLogsConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration.html

    .PARAMETER LogsEncryptionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration-logsencryptionconfiguration
        UpdateType: Mutable
        Type: LogsEncryptionConfiguration

    .PARAMETER BackupConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-destinationlogsconfiguration-backupconfiguration
        UpdateType: Mutable
        Type: LogsBackupConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.OrganizationCentralizationRule.DestinationLogsConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LogsEncryptionConfiguration,

        [Parameter(Mandatory = $false)]
        $BackupConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.OrganizationCentralizationRule.DestinationLogsConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
