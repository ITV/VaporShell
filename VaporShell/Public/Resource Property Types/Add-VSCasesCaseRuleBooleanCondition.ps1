function Add-VSCasesCaseRuleBooleanCondition {
    <#
    .SYNOPSIS
        Adds an AWS::Cases::CaseRule.BooleanCondition resource property to the template.

    .DESCRIPTION
        Adds an AWS::Cases::CaseRule.BooleanCondition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-booleancondition.html

    .PARAMETER NotEqualTo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-booleancondition.html#cfn-cases-caserule-booleancondition-notequalto
        UpdateType: Mutable
        Type: BooleanOperands

    .PARAMETER EqualTo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-booleancondition.html#cfn-cases-caserule-booleancondition-equalto
        UpdateType: Mutable
        Type: BooleanOperands

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Cases.CaseRule.BooleanCondition')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NotEqualTo,

        [Parameter(Mandatory = $false)]
        $EqualTo

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cases.CaseRule.BooleanCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
