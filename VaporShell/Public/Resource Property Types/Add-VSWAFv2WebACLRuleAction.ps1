function Add-VSWAFv2WebACLRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.RuleAction resource property to the template. The action that AWS WAF should take on a web request when it matches a rule's statement. Settings at the web ACL level can override the rule action setting.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.RuleAction resource property to the template.
The action that AWS WAF should take on a web request when it matches a rule's statement. Settings at the web ACL level can override the rule action setting.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html

    .PARAMETER Allow
        Instructs AWS WAF to allow the web request.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-allow
        UpdateType: Mutable
        Type: AllowAction

    .PARAMETER Block
        Instructs AWS WAF to block the web request.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-block
        UpdateType: Mutable
        Type: BlockAction

    .PARAMETER Count
        Instructs AWS WAF to count the web request and allow it.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-count
        UpdateType: Mutable
        Type: CountAction

    .PARAMETER Captcha
        Specifies that AWS WAF should run a CAPTCHA check against the request:
+ If the request includes a valid, unexpired CAPTCHA token, AWS WAF allows the web request inspection to proceed to the next rule, similar to a CountAction.
+ If the request doesn't include a valid, unexpired CAPTCHA token, AWS WAF discontinues the web ACL evaluation of the request and blocks it from going to its intended destination.
AWS WAF generates a response that it sends back to the client, which includes the following:
+ The header x-amzn-waf-action with a value of captcha.
+ The HTTP status code 405 Method Not Allowed.
+ If the request contains an Accept header with a value of text/html, the response includes a CAPTCHA challenge.
You can configure the expiration time in the CaptchaConfig ImmunityTimeProperty setting at the rule and web ACL level. The rule setting overrides the web ACL setting.
This action option is available for rules. It isn't available for web ACL default actions.
This is used in the context of other settings, for example to specify values for RuleAction and web ACL DefaultAction.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-captcha
        UpdateType: Mutable
        Type: CaptchaAction

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.RuleAction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Allow,
        [parameter(Mandatory = $false)]
        $Block,
        [parameter(Mandatory = $false)]
        $Count,
        [parameter(Mandatory = $false)]
        $Captcha
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.RuleAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
