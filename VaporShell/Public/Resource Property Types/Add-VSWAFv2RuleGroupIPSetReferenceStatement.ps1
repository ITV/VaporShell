function Add-VSWAFv2RuleGroupIPSetReferenceStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.IPSetReferenceStatement resource property to the template. A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an AWS::WAFv2::IPSet: aws-resource-wafv2-ipset.md that specifies the addresses you want to detect, then use the ARN of that set in this statement.

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.IPSetReferenceStatement resource property to the template.
A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an AWS::WAFv2::IPSet: aws-resource-wafv2-ipset.md that specifies the addresses you want to detect, then use the ARN of that set in this statement.

Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html

    .PARAMETER Arn
        The Amazon Resource Name ARN of the AWS::WAFv2::IPSet: aws-resource-wafv2-ipset.md that this statement references.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-arn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER IPSetForwardedIPConfig
        The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For XFF header, but you can specify any header name.
If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-ipsetforwardedipconfig
        UpdateType: Mutable
        Type: IPSetForwardedIPConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.IPSetReferenceStatement')]
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
        $IPSetForwardedIPConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.IPSetReferenceStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
