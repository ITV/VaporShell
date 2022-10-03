function Add-VSNetworkFirewallRuleGroupStatefulRule {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.StatefulRule resource property to the template. A single Suricata rules specification, for use in a stateful rule group. Use this option to specify a simple Suricata rule with protocol, source and destination, ports, direction, and rule options. For information about the Suricata Rules format, see Rules Format: https://suricata.readthedocs.io/en/suricata-5.0.0/rules/intro.html#.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.StatefulRule resource property to the template.
A single Suricata rules specification, for use in a stateful rule group. Use this option to specify a simple Suricata rule with protocol, source and destination, ports, direction, and rule options. For information about the Suricata Rules format, see Rules Format: https://suricata.readthedocs.io/en/suricata-5.0.0/rules/intro.html#.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statefulrule.html

    .PARAMETER Action
        Defines what Network Firewall should do with the packets in a traffic flow when the flow matches the stateful rule criteria. For all actions, Network Firewall performs the specified action and discontinues stateful inspection of the traffic flow.
The actions for a stateful rule are defined as follows:
+  **PASS** - Permits the packets to go to the intended destination.
+  **DROP** - Blocks the packets from going to the intended destination and sends an alert log message, if alert logging is configured in the firewall's AWS::NetworkFirewall::LoggingConfiguration: aws-resource-networkfirewall-loggingconfiguration.md.
+  **ALERT** - Permits the packets to go to the intended destination and sends an alert log message, if alert logging is configured in the firewall's AWS::NetworkFirewall::LoggingConfiguration: aws-resource-networkfirewall-loggingconfiguration.md.
You can use this action to test a rule that you intend to use to drop traffic. You can enable the rule with ALERT action, verify in the logs that the rule is filtering as you want, then change the action to DROP.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statefulrule.html#cfn-networkfirewall-rulegroup-statefulrule-action
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Header
        The stateful inspection criteria for this rule, used to inspect traffic flows.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statefulrule.html#cfn-networkfirewall-rulegroup-statefulrule-header
        UpdateType: Mutable
        Type: Header

    .PARAMETER RuleOptions
        Additional settings for a stateful rule, provided as keywords and settings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statefulrule.html#cfn-networkfirewall-rulegroup-statefulrule-ruleoptions
        UpdateType: Mutable
        Type: List
        ItemType: RuleOption
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.StatefulRule')]
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
        $Action,
        [parameter(Mandatory = $true)]
        $Header,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.RuleGroup.RuleOption"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RuleOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.StatefulRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
