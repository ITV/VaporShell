function Add-VSWAFv2RuleGroupIPSetForwardedIPConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.IPSetForwardedIPConfiguration resource property to the template. The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF header, but you can specify any header name.

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.IPSetForwardedIPConfiguration resource property to the template.
The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF header, but you can specify any header name.

**Note**

If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.

This configuration is used only for IPSetReferenceStatement. For GeoMatchStatement and RateBasedStatement, use ForwardedIPConfig instead.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html

    .PARAMETER HeaderName
        The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For XFF header, set this to X-Forwarded-For.
If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-headername
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER FallbackBehavior
        The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.
If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.
You can specify the following fallback behaviors:
+  MATCH - Treat the web request as matching the rule statement. AWS WAF applies the rule action to the request.
+  NO_MATCH - Treat the web request as not matching the rule statement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-fallbackbehavior
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Position
        The position in the header to search for the IP address. The header can contain IP addresses of the original client and also of proxies. For example, the header value could be 10.1.1.1, 127.0.0.0, 10.10.10.10 where the first IP address identifies the original client and the rest identify proxies that the request went through.
The options for this setting are the following:
+ FIRST - Inspect the first IP address in the list of IP addresses in the header. This is usually the client's original IP.
+ LAST - Inspect the last IP address in the list of IP addresses in the header.
+ ANY - Inspect all IP addresses in the header for a match. If the header contains more than 10 IP addresses, AWS WAF inspects the last 10.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetforwardedipconfiguration.html#cfn-wafv2-rulegroup-ipsetforwardedipconfiguration-position
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.IPSetForwardedIPConfiguration')]
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
        $HeaderName,
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
        $FallbackBehavior,
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
        $Position
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.IPSetForwardedIPConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
