function Add-VSWAFv2RuleGroupGeoMatchStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.GeoMatchStatement resource property to the template. A rule statement used to identify web requests based on country of origin.

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.GeoMatchStatement resource property to the template.
A rule statement used to identify web requests based on country of origin.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html

    .PARAMETER CountryCodes
        An array of two-character country codes, for example,  "US", "CN" ], from the alpha-2 country ISO codes of the ISO 3166 international standard.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html#cfn-wafv2-rulegroup-geomatchstatement-countrycodes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ForwardedIPConfig
        The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For XFF header, but you can specify any header name.
If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html#cfn-wafv2-rulegroup-geomatchstatement-forwardedipconfig
        UpdateType: Mutable
        Type: ForwardedIPConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.GeoMatchStatement')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CountryCodes,
        [parameter(Mandatory = $false)]
        $ForwardedIPConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.GeoMatchStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
