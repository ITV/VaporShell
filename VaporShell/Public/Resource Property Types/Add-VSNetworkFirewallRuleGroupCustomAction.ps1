function Add-VSNetworkFirewallRuleGroupCustomAction {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::RuleGroup.CustomAction resource property to the template. An optional, non-standard action to use for stateless packet handling. You can define this in addition to the standard action that you must specify.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::RuleGroup.CustomAction resource property to the template.
An optional, non-standard action to use for stateless packet handling. You can define this in addition to the standard action that you must specify.

You define and name the custom actions that you want to be able to use, and then you reference them by name in your actions settings.

You can use custom actions in the following places:

+ In an AWS::NetworkFirewall::RuleGroup StatelessRulesAndCustomActions: aws-properties-networkfirewall-rulegroup-statelessrulesandcustomactions.md. The custom actions are available for use by name inside the StatelessRulesAndCustomActions where you define them. You can use them for your stateless rule actions to specify what to do with a packet that matches the rule's match attributes.

+ In an AWS::NetworkFirewall::FirewallPolicy: aws-resource-networkfirewall-firewallpolicy.md specification, in StatelessCustomActions. The custom actions are available for use inside the policy where you define them. You can use them for the policy's default stateless actions settings to specify what to do with packets that don't match any of the policy's stateless rules.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-customaction.html

    .PARAMETER ActionName
        The descriptive name of the custom action. You can't change the name of a custom action after you create it.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-customaction.html#cfn-networkfirewall-rulegroup-customaction-actionname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ActionDefinition
        The custom action associated with the action name.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-customaction.html#cfn-networkfirewall-rulegroup-customaction-actiondefinition
        UpdateType: Mutable
        Type: ActionDefinition

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.RuleGroup.CustomAction')]
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
        $ActionName,
        [parameter(Mandatory = $true)]
        $ActionDefinition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.RuleGroup.CustomAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
