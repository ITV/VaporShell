function Add-VSNetworkFirewallRuleGroupRuleGroup {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.RuleGroup resource property to the template. The object that defines the rules in a rule group.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.RuleGroup resource property to the template.
The object that defines the rules in a rule group.

AWS Network Firewall uses a rule group to inspect and control network traffic. You define stateless rule groups to inspect individual packets and you define stateful rule groups to inspect packets in the context of their traffic flow.

To use a rule group, you include it by reference in an Network Firewall firewall policy, then you use the policy in a firewall. You can reference a rule group from more than one firewall policy, and you can use a firewall policy in more than one firewall.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html

    .PARAMETER RuleVariables
        Settings that are available for use in the rules in the rule group. You can only use these for stateful rule groups.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup-rulevariables
        UpdateType: Mutable
        Type: RuleVariables

    .PARAMETER RulesSource
        The stateful rules or stateless rules for the rule group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup-rulessource
        UpdateType: Mutable
        Type: RulesSource

    .PARAMETER StatefulRuleOptions
        Additional options governing how Network Firewall handles stateful rules. The policies where you use your stateful rule group must have stateful rule options settings that are compatible with these settings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup-statefulruleoptions
        UpdateType: Mutable
        Type: StatefulRuleOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.RuleGroup')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RuleVariables,
        [parameter(Mandatory = $true)]
        $RulesSource,
        [parameter(Mandatory = $false)]
        $StatefulRuleOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.RuleGroup'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
