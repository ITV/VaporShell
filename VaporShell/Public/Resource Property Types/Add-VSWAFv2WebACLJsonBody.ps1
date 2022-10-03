function Add-VSWAFv2WebACLJsonBody {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.JsonBody resource property to the template. The body of a web request, inspected as JSON. The body immediately follows the request headers. This is used in the FieldToMatch specification.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.JsonBody resource property to the template.
The body of a web request, inspected as JSON. The body immediately follows the request headers. This is used in the FieldToMatch specification.

Use the specifications in this object to indicate which parts of the JSON body to inspect using the rule's inspection criteria. AWS WAF inspects only the parts of the JSON that result from the matches that you indicate.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html

    .PARAMETER MatchPattern
        The patterns to look for in the JSON body. AWS WAF inspects the results of these pattern matches against the rule inspection criteria.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-matchpattern
        UpdateType: Mutable
        Type: JsonMatchPattern

    .PARAMETER MatchScope
        The parts of the JSON to match against using the MatchPattern. If you specify All, AWS WAF matches against keys and values.
Valid Values: ALL | KEY | VALUE

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-matchscope
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InvalidFallbackBehavior
        What AWS WAF should do if it fails to completely parse the JSON body. The options are the following:
+  EVALUATE_AS_STRING - Inspect the body as plain text. AWS WAF applies the text transformations and inspection criteria that you defined for the JSON inspection to the body text string.
+  MATCH - Treat the web request as matching the rule statement. AWS WAF applies the rule action to the request.
+  NO_MATCH - Treat the web request as not matching the rule statement.
If you don't provide this setting, AWS WAF parses and evaluates the content only up to the first parsing failure that it encounters.
AWS WAF does its best to parse the entire JSON body, but might be forced to stop for reasons such as invalid characters, duplicate keys, truncation, and any content whose root node isn't an object or an array.
AWS WAF parses the JSON in the following examples as two valid key, value pairs:
+ Missing comma: {"key1":"value1""key2":"value2"}
+ Missing colon: {"key1":"value1","key2""value2"}
+ Extra colons: {"key1"::"value1","key2""value2"}

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-invalidfallbackbehavior
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER OversizeHandling
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-jsonbody.html#cfn-wafv2-webacl-jsonbody-oversizehandling
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.JsonBody')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $MatchPattern,
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
        $MatchScope,
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
        $InvalidFallbackBehavior,
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
        $OversizeHandling
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.JsonBody'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
