function Add-VSLexBotSlotCaptureSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.SlotCaptureSetting resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Lex::Bot.SlotCaptureSetting resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html

    .PARAMETER CaptureConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-captureconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER FailureConditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-failureconditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER CaptureResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-captureresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER CaptureNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-capturenextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER FailureResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-failureresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER CodeHook
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-codehook
        UpdateType: Mutable
        Type: DialogCodeHookInvocationSetting

    .PARAMETER FailureNextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-failurenextstep
        UpdateType: Mutable
        Type: DialogState

    .PARAMETER ElicitationCodeHook
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-elicitationcodehook
        UpdateType: Mutable
        Type: ElicitationCodeHookInvocationSetting

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.SlotCaptureSetting')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CaptureConditional,
        [parameter(Mandatory = $false)]
        $FailureConditional,
        [parameter(Mandatory = $false)]
        $CaptureResponse,
        [parameter(Mandatory = $false)]
        $CaptureNextStep,
        [parameter(Mandatory = $false)]
        $FailureResponse,
        [parameter(Mandatory = $false)]
        $CodeHook,
        [parameter(Mandatory = $false)]
        $FailureNextStep,
        [parameter(Mandatory = $false)]
        $ElicitationCodeHook
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.SlotCaptureSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
