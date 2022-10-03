function Add-VSNetworkFirewallRuleGroupAddress {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.Address resource property to the template. A single IP address specification. This is used in the AWS::NetworkFirewall::RuleGroup MatchAttributes: aws-properties-networkfirewall-rulegroup-matchattributes.md source and destination specifications.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.Address resource property to the template.
A single IP address specification. This is used in the AWS::NetworkFirewall::RuleGroup MatchAttributes: aws-properties-networkfirewall-rulegroup-matchattributes.md source and destination specifications.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-address.html

    .PARAMETER AddressDefinition
        Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing CIDR notation. Network Firewall supports all address ranges for IPv4.
Examples:
+ To configure Network Firewall to inspect for the IP address 192.0.2.44, specify 192.0.2.44/32.
+ To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify 192.0.2.0/24.
For more information about CIDR notation, see the Wikipedia entry Classless Inter-Domain Routing: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-address.html#cfn-networkfirewall-rulegroup-address-addressdefinition
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.Address')]
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
        $AddressDefinition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.Address'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
