function Add-VSWAFv2RuleGroupRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.RuleAction resource property to the template.

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.RuleAction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html

    .PARAMETER Captcha
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-captcha
        UpdateType: Mutable
        Type: CaptchaAction

    .PARAMETER Block
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-block
        UpdateType: Mutable
        Type: BlockAction

    .PARAMETER Count
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-count
        UpdateType: Mutable
        Type: CountAction

    .PARAMETER Allow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-allow
        UpdateType: Mutable
        Type: AllowAction

    .PARAMETER Challenge
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-challenge
        UpdateType: Mutable
        Type: ChallengeAction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.RuleAction')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Captcha,

        [Parameter(Mandatory = $false)]
        $Block,

        [Parameter(Mandatory = $false)]
        $Count,

        [Parameter(Mandatory = $false)]
        $Allow,

        [Parameter(Mandatory = $false)]
        $Challenge

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.RuleAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
