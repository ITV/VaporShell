function Add-VSElasticLoadBalancingV2ListenerRuleRuleCondition {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition resource property to the template. Specifies a condition for a listener rule.

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition resource property to the template.
Specifies a condition for a listener rule.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html

    .PARAMETER Field
        The field in the HTTP request. The following are the possible values:
+  http-header
+  http-request-method
+  host-header
+  path-pattern
+  query-string
+  source-ip

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-field
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Values
        The condition value. Specify only when Field is host-header or path-pattern. Alternatively, to specify multiple host names or multiple path patterns, use HostHeaderConfig or PathPatternConfig.
If Field is host-header and you're not using HostHeaderConfig, you can specify a single host name for example, my.example.com. A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters.
+ A-Z, a-z, 0-9
+ - .
+ * matches 0 or more characters
+ ? matches exactly 1 character
If Field is path-pattern and you're not using PathPatternConfig, you can specify a single path pattern for example, /img/*. A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters.
+ A-Z, a-z, 0-9
+ _ - . $ / ~ " ' @ : +
+ & using &amp;
+ * matches 0 or more characters
+ ? matches exactly 1 character

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-values
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER HttpRequestMethodConfig
        Information for an HTTP method condition. Specify only when Field is http-request-method.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httprequestmethodconfig
        UpdateType: Mutable
        Type: HttpRequestMethodConfig

    .PARAMETER PathPatternConfig
        Information for a path pattern condition. Specify only when Field is path-pattern.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-pathpatternconfig
        UpdateType: Mutable
        Type: PathPatternConfig

    .PARAMETER HttpHeaderConfig
        Information for an HTTP header condition. Specify only when Field is http-header.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httpheaderconfig
        UpdateType: Mutable
        Type: HttpHeaderConfig

    .PARAMETER SourceIpConfig
        Information for a source IP condition. Specify only when Field is source-ip.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-sourceipconfig
        UpdateType: Mutable
        Type: SourceIpConfig

    .PARAMETER HostHeaderConfig
        Information for a host header condition. Specify only when Field is host-header.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-hostheaderconfig
        UpdateType: Mutable
        Type: HostHeaderConfig

    .PARAMETER QueryStringConfig
        Information for a query string condition. Specify only when Field is query-string.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-querystringconfig
        UpdateType: Mutable
        Type: QueryStringConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RuleCondition')]
    [cmdletbinding()]
    Param
    (
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
        $Field,
        [parameter(Mandatory = $false)]
        $Values,
        [parameter(Mandatory = $false)]
        $HttpRequestMethodConfig,
        [parameter(Mandatory = $false)]
        $PathPatternConfig,
        [parameter(Mandatory = $false)]
        $HttpHeaderConfig,
        [parameter(Mandatory = $false)]
        $SourceIpConfig,
        [parameter(Mandatory = $false)]
        $HostHeaderConfig,
        [parameter(Mandatory = $false)]
        $QueryStringConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RuleCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
