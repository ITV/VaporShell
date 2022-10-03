function Add-VSWAFv2RuleGroupCaptchaConfig {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.CaptchaConfig resource property to the template. Specifies how AWS WAF should handle CAPTCHA evaluations. This is available at the web ACL level and in each rule.

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.CaptchaConfig resource property to the template.
Specifies how AWS WAF should handle CAPTCHA evaluations. This is available at the web ACL level and in each rule.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-captchaconfig.html

    .PARAMETER ImmunityTimeProperty
        Determines how long a CAPTCHA token remains valid after the client successfully solves a CAPTCHA puzzle.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-captchaconfig.html#cfn-wafv2-rulegroup-captchaconfig-immunitytimeproperty
        UpdateType: Mutable
        Type: ImmunityTimeProperty

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.CaptchaConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ImmunityTimeProperty
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.CaptchaConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
