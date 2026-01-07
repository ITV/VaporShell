function Add-VSCasesCaseRuleBooleanOperands {
    <#
    .SYNOPSIS
        Adds an AWS::Cases::CaseRule.BooleanOperands resource property to the template.

    .DESCRIPTION
        Adds an AWS::Cases::CaseRule.BooleanOperands resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-booleanoperands.html

    .PARAMETER OperandOne
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-booleanoperands.html#cfn-cases-caserule-booleanoperands-operandone
        UpdateType: Mutable
        Type: OperandOne

    .PARAMETER OperandTwo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-booleanoperands.html#cfn-cases-caserule-booleanoperands-operandtwo
        UpdateType: Mutable
        Type: OperandTwo

    .PARAMETER Result
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-caserule-booleanoperands.html#cfn-cases-caserule-booleanoperands-result
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Cases.CaseRule.BooleanOperands')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $OperandOne,

        [Parameter(Mandatory = $true)]
        $OperandTwo,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Result

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cases.CaseRule.BooleanOperands'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
