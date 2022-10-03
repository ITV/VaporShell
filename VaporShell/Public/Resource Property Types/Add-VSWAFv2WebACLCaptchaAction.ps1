function Add-VSWAFv2WebACLCaptchaAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.CaptchaAction resource property to the template. Specifies that AWS WAF should run a CAPTCHA check against the request:

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.CaptchaAction resource property to the template.
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

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-captchaaction.html

    .PARAMETER CustomRequestHandling
        Defines custom handling for the web request.
For information about customizing web requests and responses, see Customizing web requests and responses in AWS WAF: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html in the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-captchaaction.html#cfn-wafv2-webacl-captchaaction-customrequesthandling
        UpdateType: Mutable
        Type: CustomRequestHandling

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.CaptchaAction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomRequestHandling
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.CaptchaAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
