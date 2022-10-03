function Add-VSWAFv2RuleGroupLabelSummary {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.LabelSummary resource property to the template. List of labels used by one or more of the rules of a AWS::WAFv2::RuleGroup: aws-resource-wafv2-rulegroup.md. This summary object is used for the following rule group lists:

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.LabelSummary resource property to the template.
List of labels used by one or more of the rules of a AWS::WAFv2::RuleGroup: aws-resource-wafv2-rulegroup.md. This summary object is used for the following rule group lists:

+  AvailableLabels - Labels that rules add to matching requests. These labels are defined in the RuleLabels for a Rule.

+  ConsumedLabels - Labels that rules match against. These labels are defined in a LabelMatchStatement specification, in the rule statement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-labelsummary.html

    .PARAMETER Name
        An individual label specification.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-labelsummary.html#cfn-wafv2-rulegroup-labelsummary-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.LabelSummary')]
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.LabelSummary'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
