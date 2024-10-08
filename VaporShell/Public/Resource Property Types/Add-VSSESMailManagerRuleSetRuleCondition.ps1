function Add-VSSESMailManagerRuleSetRuleCondition {
    <#
    .SYNOPSIS
        Adds an AWS::SES::MailManagerRuleSet.RuleCondition resource property to the template.

    .DESCRIPTION
        Adds an AWS::SES::MailManagerRuleSet.RuleCondition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html

    .PARAMETER BooleanExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-booleanexpression
        UpdateType: Mutable
        Type: RuleBooleanExpression

    .PARAMETER VerdictExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-verdictexpression
        UpdateType: Mutable
        Type: RuleVerdictExpression

    .PARAMETER StringExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-stringexpression
        UpdateType: Mutable
        Type: RuleStringExpression

    .PARAMETER DmarcExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-dmarcexpression
        UpdateType: Mutable
        Type: RuleDmarcExpression

    .PARAMETER NumberExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-numberexpression
        UpdateType: Mutable
        Type: RuleNumberExpression

    .PARAMETER IpExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-ipexpression
        UpdateType: Mutable
        Type: RuleIpExpression

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SES.MailManagerRuleSet.RuleCondition')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $BooleanExpression,

        [Parameter(Mandatory = $false)]
        $VerdictExpression,

        [Parameter(Mandatory = $false)]
        $StringExpression,

        [Parameter(Mandatory = $false)]
        $DmarcExpression,

        [Parameter(Mandatory = $false)]
        $NumberExpression,

        [Parameter(Mandatory = $false)]
        $IpExpression

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.MailManagerRuleSet.RuleCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
