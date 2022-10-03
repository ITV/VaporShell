function Add-VSNetworkFirewallRuleGroupRuleDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.RuleDefinition resource property to the template. The inspection criteria and action for a single stateless rule. AWS Network Firewall inspects each packet for the specified matching criteria. When a packet matches the criteria, Network Firewall performs the rule's actions on the packet.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.RuleDefinition resource property to the template.
The inspection criteria and action for a single stateless rule. AWS Network Firewall inspects each packet for the specified matching criteria. When a packet matches the criteria, Network Firewall performs the rule's actions on the packet.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruledefinition.html

    .PARAMETER MatchAttributes
        Criteria for Network Firewall to use to inspect an individual packet in stateless rule inspection. Each match attributes set can include one or more items such as IP address, CIDR range, port number, protocol, and TCP flags.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruledefinition.html#cfn-networkfirewall-rulegroup-ruledefinition-matchattributes
        UpdateType: Mutable
        Type: MatchAttributes

    .PARAMETER Actions
        The actions to take on a packet that matches one of the stateless rule definition's match attributes. You must specify a standard action and you can add custom actions.
Network Firewall only forwards a packet for stateful rule inspection if you specify aws:forward_to_sfe for a rule that the packet matches, or if the packet doesn't match any stateless rule and you specify aws:forward_to_sfe for the StatelessDefaultActions setting for the AWS::NetworkFirewall::FirewallPolicy: aws-resource-networkfirewall-firewallpolicy.md.
For every rule, you must specify exactly one of the following standard actions.
+  **aws:pass** - Discontinues all inspection of the packet and permits it to go to its intended destination.
+  **aws:drop** - Discontinues all inspection of the packet and blocks it from going to its intended destination.
+  **aws:forward_to_sfe** - Discontinues stateless inspection of the packet and forwards it to the stateful rule engine for inspection.
Additionally, you can specify a custom action. To do this, you define a custom action by name and type, then provide the name you've assigned to the action in this Actions setting.
To provide more than one action in this setting, separate the settings with a comma. For example, if you have a publish metrics custom action that you've named MyMetricsAction, then you could specify the standard action aws:pass combined with the custom action using “aws:pass”, “MyMetricsAction”].

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruledefinition.html#cfn-networkfirewall-rulegroup-ruledefinition-actions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.RuleDefinition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $MatchAttributes,
        [parameter(Mandatory = $true)]
        $Actions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.RuleDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
