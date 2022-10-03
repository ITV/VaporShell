function Add-VSWAFv2WebACLCustomResponse {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.CustomResponse resource property to the template. A custom response to send to the client. You can define a custom response for rule actions and default web ACL actions that are set to BlockAction.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.CustomResponse resource property to the template.
A custom response to send to the client. You can define a custom response for rule actions and default web ACL actions that are set to BlockAction.

For information about customizing web requests and responses, see Customizing web requests and responses in AWS WAF: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html in the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customresponse.html

    .PARAMETER ResponseCode
        The HTTP status code to return to the client.
For a list of status codes that you can use in your custom reqponses, see Supported status codes for custom response: https://docs.aws.amazon.com/waf/latest/developerguide/customizing-the-response-status-codes.html in the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customresponse.html#cfn-wafv2-webacl-customresponse-responsecode
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER CustomResponseBodyKey
        References the response body that you want AWS WAF to return to the web request client. You can define a custom response for a rule action or a default web ACL action that is set to block. To do this, you first define the response body key and value in the CustomResponseBodies setting for the AWS::WAFv2::WebACL: aws-resource-wafv2-webacl.md or AWS::WAFv2::RuleGroup: aws-resource-wafv2-rulegroup.md where you want to use it. Then, in the rule action or web ACL default action BlockAction setting, you reference the response body using this key.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customresponse.html#cfn-wafv2-webacl-customresponse-customresponsebodykey
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ResponseHeaders
        The HTTP headers to use in the response. Duplicate header names are not allowed.
For information about the limits on count and size for custom request and response settings, see AWS WAF quotas: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html in the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customresponse.html#cfn-wafv2-webacl-customresponse-responseheaders
        UpdateType: Mutable
        Type: List
        ItemType: CustomHTTPHeader

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.CustomResponse')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResponseCode,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CustomResponseBodyKey,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.WebACL.CustomHTTPHeader"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResponseHeaders
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.CustomResponse'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
