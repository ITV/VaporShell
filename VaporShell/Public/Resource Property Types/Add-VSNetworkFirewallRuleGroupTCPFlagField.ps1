function Add-VSNetworkFirewallRuleGroupTCPFlagField {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.TCPFlagField resource property to the template. TCP flags and masks to inspect packets for. This is used in the AWS::NetworkFirewall::RuleGroup MatchAttributes: aws-properties-networkfirewall-rulegroup-matchattributes.md specification.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.TCPFlagField resource property to the template.
TCP flags and masks to inspect packets for. This is used in the AWS::NetworkFirewall::RuleGroup MatchAttributes: aws-properties-networkfirewall-rulegroup-matchattributes.md specification.

For example:

"TCPFlags":  { "Flags":  "ECE", "SYN" ], "Masks":  "SYN", "ECE" ] } ]

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-tcpflagfield.html

    .PARAMETER Flags
        Used in conjunction with the Masks setting to define the flags that must be set and flags that must not be set in order for the packet to match. This setting can only specify values that are also specified in the Masks setting.
For the flags that are specified in the masks setting, the following must be true for the packet to match:
+ The ones that are set in this flags setting must be set in the packet.
+ The ones that are not set in this flags setting must also not be set in the packet.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-tcpflagfield.html#cfn-networkfirewall-rulegroup-tcpflagfield-flags
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Masks
        The set of flags to consider in the inspection. To inspect all flags in the valid values list, leave this with no setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-tcpflagfield.html#cfn-networkfirewall-rulegroup-tcpflagfield-masks
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.TCPFlagField')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Flags,
        [parameter(Mandatory = $false)]
        $Masks
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.TCPFlagField'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
