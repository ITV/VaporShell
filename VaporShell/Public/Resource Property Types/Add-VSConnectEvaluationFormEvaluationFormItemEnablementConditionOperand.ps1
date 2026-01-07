function Add-VSConnectEvaluationFormEvaluationFormItemEnablementConditionOperand {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::EvaluationForm.EvaluationFormItemEnablementConditionOperand resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::EvaluationForm.EvaluationFormItemEnablementConditionOperand resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconditionoperand.html

    .PARAMETER Expression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconditionoperand.html#cfn-connect-evaluationform-evaluationformitemenablementconditionoperand-expression
        UpdateType: Mutable
        Type: EvaluationFormItemEnablementExpression

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormItemEnablementConditionOperand')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Expression

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormItemEnablementConditionOperand'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
