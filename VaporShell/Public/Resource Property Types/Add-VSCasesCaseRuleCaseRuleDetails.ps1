function Add-VSCasesCaseRuleCaseRuleDetails {
    <#
    .SYNOPSIS
        Adds an AWS::Cases::CaseRule.CaseRuleDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::Cases::CaseRule.CaseRuleDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-caseruledetails.html

    .PARAMETER Required
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-caseruledetails.html#cfn-cases-caserule-caseruledetails-required
        UpdateType: Mutable
        Type: RequiredCaseRule

    .PARAMETER Hidden
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-caseruledetails.html#cfn-cases-caserule-caseruledetails-hidden
        UpdateType: Mutable
        Type: HiddenCaseRule

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Cases.CaseRule.CaseRuleDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Required,

        [Parameter(Mandatory = $false)]
        $Hidden

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cases.CaseRule.CaseRuleDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
