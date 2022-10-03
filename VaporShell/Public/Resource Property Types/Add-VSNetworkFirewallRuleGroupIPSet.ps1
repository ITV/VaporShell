function Add-VSNetworkFirewallRuleGroupIPSet {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.IPSet resource property to the template. A list of IP addresses and address ranges, in CIDR notation. This is part of a AWS::NetworkFirewall::RuleGroup RuleVariables: aws-properties-networkfirewall-rulegroup-rulevariables.md.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.IPSet resource property to the template.
A list of IP addresses and address ranges, in CIDR notation. This is part of a AWS::NetworkFirewall::RuleGroup RuleVariables: aws-properties-networkfirewall-rulegroup-rulevariables.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ipset.html

    .PARAMETER Definition
        The list of IP addresses and address ranges, in CIDR notation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ipset.html#cfn-networkfirewall-rulegroup-ipset-definition
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.IPSet')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Definition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.IPSet'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
