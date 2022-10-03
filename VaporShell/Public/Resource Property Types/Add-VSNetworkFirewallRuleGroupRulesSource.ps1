function Add-VSNetworkFirewallRuleGroupRulesSource {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.RulesSource resource property to the template. The stateless or stateful rules definitions for use in a single rule group. Each rule group requires a single RulesSource. You can use an instance of this for either stateless rules or stateful rules.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.RulesSource resource property to the template.
The stateless or stateful rules definitions for use in a single rule group. Each rule group requires a single RulesSource. You can use an instance of this for either stateless rules or stateful rules.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessource.html

    .PARAMETER RulesString
        Stateful inspection criteria, provided in Suricata compatible intrusion prevention system IPS rules. Suricata is an open-source network IPS that includes a standard rule-based language for network traffic inspection.
These rules contain the inspection criteria and the action to take for traffic that matches the criteria, so this type of rule group doesn't have a separate action setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessource.html#cfn-networkfirewall-rulegroup-rulessource-rulesstring
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RulesSourceList
        Stateful inspection criteria for a domain list rule group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessource.html#cfn-networkfirewall-rulegroup-rulessource-rulessourcelist
        UpdateType: Mutable
        Type: RulesSourceList

    .PARAMETER StatefulRules
        An array of individual stateful rules inspection criteria to be used together in a stateful rule group. Use this option to specify simple Suricata rules with protocol, source and destination, ports, direction, and rule options. For information about the Suricata Rules format, see Rules Format: https://suricata.readthedocs.io/en/suricata-5.0.0/rules/intro.html#.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessource.html#cfn-networkfirewall-rulegroup-rulessource-statefulrules
        UpdateType: Mutable
        Type: List
        ItemType: StatefulRule
        DuplicatesAllowed: True

    .PARAMETER StatelessRulesAndCustomActions
        Stateless inspection criteria to be used in a stateless rule group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessource.html#cfn-networkfirewall-rulegroup-rulessource-statelessrulesandcustomactions
        UpdateType: Mutable
        Type: StatelessRulesAndCustomActions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.RulesSource')]
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
        $RulesString,
        [parameter(Mandatory = $false)]
        $RulesSourceList,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.RuleGroup.StatefulRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StatefulRules,
        [parameter(Mandatory = $false)]
        $StatelessRulesAndCustomActions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.RulesSource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
