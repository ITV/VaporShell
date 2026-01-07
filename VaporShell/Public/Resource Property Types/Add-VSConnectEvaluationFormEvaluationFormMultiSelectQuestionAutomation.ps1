function Add-VSConnectEvaluationFormEvaluationFormMultiSelectQuestionAutomation {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::EvaluationForm.EvaluationFormMultiSelectQuestionAutomation resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::EvaluationForm.EvaluationFormMultiSelectQuestionAutomation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformmultiselectquestionautomation.html

    .PARAMETER Options
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformmultiselectquestionautomation.html#cfn-connect-evaluationform-evaluationformmultiselectquestionautomation-options
        UpdateType: Mutable
        Type: List
        ItemType: EvaluationFormMultiSelectQuestionAutomationOption
        DuplicatesAllowed: True

    .PARAMETER AnswerSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformmultiselectquestionautomation.html#cfn-connect-evaluationform-evaluationformmultiselectquestionautomation-answersource
        UpdateType: Mutable
        Type: EvaluationFormQuestionAutomationAnswerSource

    .PARAMETER DefaultOptionRefIds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformmultiselectquestionautomation.html#cfn-connect-evaluationform-evaluationformmultiselectquestionautomation-defaultoptionrefids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormMultiSelectQuestionAutomation')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormMultiSelectQuestionAutomationOption"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Options,

        [Parameter(Mandatory = $false)]
        $AnswerSource,

        [Parameter(Mandatory = $false)]
        $DefaultOptionRefIds

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormMultiSelectQuestionAutomation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
