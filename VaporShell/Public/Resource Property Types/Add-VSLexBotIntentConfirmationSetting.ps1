function Add-VSLexBotIntentConfirmationSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.IntentConfirmationSetting resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.IntentConfirmationSetting resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html

    .PARAMETER PromptSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-promptspecification
        UpdateType: Mutable
        Type: PromptSpecification

    .PARAMETER ConfirmationResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-confirmationresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER DeclinationConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-declinationconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER FailureConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-failureconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER ConfirmationConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-confirmationconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER IsActive
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-isactive
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER FailureResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-failureresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER CodeHook
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-codehook
        UpdateType: Mutable
        Type: DialogCodeHookInvocationSetting

    .PARAMETER DeclinationNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-declinationnextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER ElicitationCodeHook
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-elicitationcodehook
        UpdateType: Mutable
        Type: ElicitationCodeHookInvocationSetting

    .PARAMETER ConfirmationNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-confirmationnextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER FailureNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-failurenextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER DeclinationResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-declinationresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.IntentConfirmationSetting')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $PromptSpecification,

        [Parameter(Mandatory = $false)]
        $ConfirmationResponse,

        [Parameter(Mandatory = $false)]
        $DeclinationConditional,

        [Parameter(Mandatory = $false)]
        $FailureConditional,

        [Parameter(Mandatory = $false)]
        $ConfirmationConditional,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IsActive,

        [Parameter(Mandatory = $false)]
        $FailureResponse,

        [Parameter(Mandatory = $false)]
        $CodeHook,

        [Parameter(Mandatory = $false)]
        $DeclinationNextStep,

        [Parameter(Mandatory = $false)]
        $ElicitationCodeHook,

        [Parameter(Mandatory = $false)]
        $ConfirmationNextStep,

        [Parameter(Mandatory = $false)]
        $FailureNextStep,

        [Parameter(Mandatory = $false)]
        $DeclinationResponse

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.IntentConfirmationSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
