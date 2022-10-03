function Add-VSNetworkFirewallFirewallPolicyFirewallPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::FirewallPolicy.FirewallPolicy resource property to the template. The traffic filtering behavior of a firewall policy, defined in a collection of stateless and stateful rule groups and other settings.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::FirewallPolicy.FirewallPolicy resource property to the template.
The traffic filtering behavior of a firewall policy, defined in a collection of stateless and stateful rule groups and other settings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html

    .PARAMETER StatelessDefaultActions
        The actions to take on a packet if it doesn't match any of the stateless rules in the policy. If you want non-matching packets to be forwarded for stateful inspection, specify aws:forward_to_sfe.
You must specify one of the standard actions: aws:pass, aws:drop, or aws:forward_to_sfe. In addition, you can specify custom actions that are compatible with your standard section choice.
For example, you could specify "aws:pass"] or you could specify "aws:pass", “customActionName”]. For information about compatibility, see the custom action descriptions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelessdefaultactions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER StatelessFragmentDefaultActions
        The actions to take on a fragmented packet if it doesn't match any of the stateless rules in the policy. If you want non-matching fragmented packets to be forwarded for stateful inspection, specify aws:forward_to_sfe.
You must specify one of the standard actions: aws:pass, aws:drop, or aws:forward_to_sfe. In addition, you can specify custom actions that are compatible with your standard section choice.
For example, you could specify "aws:pass"] or you could specify "aws:pass", “customActionName”]. For information about compatibility, see the custom action descriptions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelessfragmentdefaultactions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER StatelessCustomActions
        The custom action definitions that are available for use in the firewall policy's StatelessDefaultActions setting. You name each custom action that you define, and then you can use it by name in your default actions specifications.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelesscustomactions
        UpdateType: Mutable
        Type: List
        ItemType: CustomAction
        DuplicatesAllowed: True

    .PARAMETER StatelessRuleGroupReferences
        References to the stateless rule groups that are used in the policy. These define the matching criteria in stateless rules.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelessrulegroupreferences
        UpdateType: Mutable
        Type: List
        ItemType: StatelessRuleGroupReference
        DuplicatesAllowed: True

    .PARAMETER StatefulRuleGroupReferences
        References to the stateful rule groups that are used in the policy. These define the inspection criteria in stateful rules.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statefulrulegroupreferences
        UpdateType: Mutable
        Type: List
        ItemType: StatefulRuleGroupReference
        DuplicatesAllowed: True

    .PARAMETER StatefulDefaultActions
        The default actions to take on a packet that doesn't match any stateful rules. The stateful default action is optional, and is only valid when using the strict rule order.
Valid values of the stateful default action:
+ aws:drop_strict
+ aws:drop_established
+ aws:alert_strict
+ aws:alert_established
For more information, see Strict evaluation order: https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html#suricata-strict-rule-evaluation-order.html in the *AWS Network Firewall Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statefuldefaultactions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER StatefulEngineOptions
        Additional options governing how Network Firewall handles stateful rules. The stateful rule groups that you use in your policy must have stateful rule options settings that are compatible with these settings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statefulengineoptions
        UpdateType: Mutable
        Type: StatefulEngineOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.FirewallPolicy.FirewallPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $StatelessDefaultActions,
        [parameter(Mandatory = $true)]
        $StatelessFragmentDefaultActions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.FirewallPolicy.CustomAction"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StatelessCustomActions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.FirewallPolicy.StatelessRuleGroupReference"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StatelessRuleGroupReferences,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.NetworkFirewall.FirewallPolicy.StatefulRuleGroupReference"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StatefulRuleGroupReferences,
        [parameter(Mandatory = $false)]
        $StatefulDefaultActions,
        [parameter(Mandatory = $false)]
        $StatefulEngineOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.FirewallPolicy.FirewallPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
