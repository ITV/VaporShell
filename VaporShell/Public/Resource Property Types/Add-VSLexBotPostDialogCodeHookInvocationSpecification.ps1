function Add-VSLexBotPostDialogCodeHookInvocationSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.PostDialogCodeHookInvocationSpecification resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.PostDialogCodeHookInvocationSpecification resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html

    .PARAMETER SuccessResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-successresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER FailureConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-failureconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER TimeoutNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-timeoutnextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER SuccessConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-successconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER TimeoutResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-timeoutresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER SuccessNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-successnextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER FailureResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-failureresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER FailureNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-failurenextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER TimeoutConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postdialogcodehookinvocationspecification.html#cfn-lex-bot-postdialogcodehookinvocationspecification-timeoutconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.PostDialogCodeHookInvocationSpecification')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SuccessResponse,

        [Parameter(Mandatory = $false)]
        $FailureConditional,

        [Parameter(Mandatory = $false)]
        $TimeoutNextStep,

        [Parameter(Mandatory = $false)]
        $SuccessConditional,

        [Parameter(Mandatory = $false)]
        $TimeoutResponse,

        [Parameter(Mandatory = $false)]
        $SuccessNextStep,

        [Parameter(Mandatory = $false)]
        $FailureResponse,

        [Parameter(Mandatory = $false)]
        $FailureNextStep,

        [Parameter(Mandatory = $false)]
        $TimeoutConditional

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.PostDialogCodeHookInvocationSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
