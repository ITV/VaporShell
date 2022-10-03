function Add-VSNetworkFirewallRuleGroupRulesSourceList {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.RulesSourceList resource property to the template. Stateful inspection criteria for a domain list rule group.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.RulesSourceList resource property to the template.
Stateful inspection criteria for a domain list rule group.

For HTTPS traffic, domain filtering is SNI-based. It uses the server name indicator extension of the TLS handshake.

By default, Network Firewall domain list inspection only includes traffic coming from the VPC where you deploy the firewall. To inspect traffic from IP addresses outside of the deployment VPC, you set the HOME_NET rule variable to include the CIDR range of the deployment VPC plus the other CIDR ranges. For more information, see AWS::NetworkFirewall::RuleGroup RuleVariables: aws-properties-networkfirewall-rulegroup-rulevariables.md in this guide and Stateful domain list rule groups in AWS Network Firewall: https://docs.aws.amazon.com/network-firewall/latest/developerguide/stateful-rule-groups-domain-names.html in the *Network Firewall Developer Guide*

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html

    .PARAMETER Targets
        The domains that you want to inspect for in your traffic flows. Valid domain specifications are the following:
+ Explicit names. For example, abc.example.com matches only the domain abc.example.com.
+ Names that use a domain wildcard, which you indicate with an initial '.'. For example,.example.com matches example.com and matches all subdomains of example.com, such as abc.example.com and www.example.com.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html#cfn-networkfirewall-rulegroup-rulessourcelist-targets
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER TargetTypes
        The types of targets to inspect for. Valid values are TLS_SNI and HTTP_HOST.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html#cfn-networkfirewall-rulegroup-rulessourcelist-targettypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER GeneratedRulesType
        Whether you want to allow or deny access to the domains in your target list.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html#cfn-networkfirewall-rulegroup-rulessourcelist-generatedrulestype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.RulesSourceList')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Targets,
        [parameter(Mandatory = $true)]
        $TargetTypes,
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
        $GeneratedRulesType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.RulesSourceList'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
