function Add-VSLexBotMessage {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.Message resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.Message resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html

    .PARAMETER CustomPayload
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-custompayload
        UpdateType: Mutable
        Type: CustomPayload

    .PARAMETER ImageResponseCard
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-imageresponsecard
        UpdateType: Mutable
        Type: ImageResponseCard

    .PARAMETER PlainTextMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-plaintextmessage
        UpdateType: Mutable
        Type: PlainTextMessage

    .PARAMETER SSMLMessage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-ssmlmessage
        UpdateType: Mutable
        Type: SSMLMessage

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.Message')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CustomPayload,

        [Parameter(Mandatory = $false)]
        $ImageResponseCard,

        [Parameter(Mandatory = $false)]
        $PlainTextMessage,

        [Parameter(Mandatory = $false)]
        $SSMLMessage

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.Message'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
