function Add-VSNetworkFirewallRuleGroupStatelessRule {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.StatelessRule resource property to the template. A single stateless rule. This is used in AWS::NetworkFirewall::RuleGroup StatelessRulesAndCustomActions: aws-properties-networkfirewall-rulegroup-statelessrulesandcustomactions.md.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.StatelessRule resource property to the template.
A single stateless rule. This is used in AWS::NetworkFirewall::RuleGroup StatelessRulesAndCustomActions: aws-properties-networkfirewall-rulegroup-statelessrulesandcustomactions.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statelessrule.html

    .PARAMETER RuleDefinition
        Defines the stateless 5-tuple packet inspection criteria and the action to take on a packet that matches the criteria.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statelessrule.html#cfn-networkfirewall-rulegroup-statelessrule-ruledefinition
        UpdateType: Mutable
        Type: RuleDefinition

    .PARAMETER Priority
        Indicates the order in which to run this rule relative to all of the rules that are defined for a stateless rule group. Network Firewall evaluates the rules in a rule group starting with the lowest priority setting. You must ensure that the priority settings are unique for the rule group.
Each stateless rule group uses exactly one StatelessRulesAndCustomActions object, and each StatelessRulesAndCustomActions contains exactly one StatelessRules object. To ensure unique priority settings for your rule groups, set unique priorities for the stateless rules that you define inside any single StatelessRules object.
You can change the priority settings of your rules at any time. To make it easier to insert rules later, number them so there's a wide range in between, for example use 100, 200, and so on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statelessrule.html#cfn-networkfirewall-rulegroup-statelessrule-priority
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.StatelessRule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $RuleDefinition,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Priority
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.StatelessRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
