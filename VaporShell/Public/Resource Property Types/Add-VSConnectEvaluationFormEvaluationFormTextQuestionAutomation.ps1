function Add-VSConnectEvaluationFormEvaluationFormTextQuestionAutomation {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::EvaluationForm.EvaluationFormTextQuestionAutomation resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::EvaluationForm.EvaluationFormTextQuestionAutomation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformtextquestionautomation.html

    .PARAMETER AnswerSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformtextquestionautomation.html#cfn-connect-evaluationform-evaluationformtextquestionautomation-answersource
        UpdateType: Mutable
        Type: EvaluationFormQuestionAutomationAnswerSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormTextQuestionAutomation')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AnswerSource

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormTextQuestionAutomation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
