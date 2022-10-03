function Add-VSNetworkFirewallLoggingConfigurationLoggingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::LoggingConfiguration.LoggingConfiguration resource property to the template. Defines how AWS Network Firewall performs logging for a AWS::NetworkFirewall::Firewall: aws-resource-networkfirewall-firewall.md.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::LoggingConfiguration.LoggingConfiguration resource property to the template.
Defines how AWS Network Firewall performs logging for a AWS::NetworkFirewall::Firewall: aws-resource-networkfirewall-firewall.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-loggingconfiguration.html

    .PARAMETER LogDestinationConfigs
        Defines the logging destinations for the logs for a firewall. Network Firewall generates logs for stateful rule groups.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-loggingconfiguration.html#cfn-networkfirewall-loggingconfiguration-loggingconfiguration-logdestinationconfigs
        UpdateType: Mutable
        Type: List
        ItemType: LogDestinationConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.LoggingConfiguration.LoggingConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.LoggingConfiguration.LogDestinationConfig"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LogDestinationConfigs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.LoggingConfiguration.LoggingConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
