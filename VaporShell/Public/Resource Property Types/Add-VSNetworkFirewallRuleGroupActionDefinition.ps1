function Add-VSNetworkFirewallRuleGroupActionDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.ActionDefinition resource property to the template. 

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.ActionDefinition resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-actiondefinition.html

    .PARAMETER PublishMetricAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-actiondefinition.html#cfn-networkfirewall-rulegroup-actiondefinition-publishmetricaction
        UpdateType: Mutable
        Type: PublishMetricAction

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.ActionDefinition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PublishMetricAction
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.ActionDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
