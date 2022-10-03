function Add-VSWAFv2WebACLRuleGroupReferenceStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.RuleGroupReferenceStatement resource property to the template. A rule statement used to run the rules that are defined in a AWS::WAFv2::RuleGroup: aws-resource-wafv2-rulegroup.md. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.RuleGroupReferenceStatement resource property to the template.
A rule statement used to run the rules that are defined in a AWS::WAFv2::RuleGroup: aws-resource-wafv2-rulegroup.md. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.

You cannot nest a RuleGroupReferenceStatement, for example for use inside a NotStatement or OrStatement. You can only use a rule group reference statement at the top level inside a web ACL.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html

    .PARAMETER Arn
        The Amazon Resource Name ARN of the entity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-arn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ExcludedRules
        The rules in the referenced rule group whose actions are set to Count. When you exclude a rule, AWS WAF evaluates it exactly as it would if the rule action setting were Count. This is a useful option for testing the rules in a rule group without modifying how they handle your web traffic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-excludedrules
        UpdateType: Mutable
        Type: List
        ItemType: ExcludedRule

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.RuleGroupReferenceStatement')]
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
        $Arn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.WebACL.ExcludedRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExcludedRules
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.RuleGroupReferenceStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
