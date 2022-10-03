function Add-VSLexBotMessage {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.Message resource property to the template. The object that provides message text and it's type.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.Message resource property to the template.
The object that provides message text and it's type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html

    .PARAMETER PlainTextMessage
        A message in plain text format.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-plaintextmessage
        UpdateType: Mutable
        Type: PlainTextMessage

    .PARAMETER CustomPayload
        A message in a custom format defined by the client application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-custompayload
        UpdateType: Mutable
        Type: CustomPayload

    .PARAMETER SSMLMessage
        A message in Speech Synthesis Markup Language SSML format.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-ssmlmessage
        UpdateType: Mutable
        Type: SSMLMessage

    .PARAMETER ImageResponseCard
        A message that defines a response card that the client application can show to the user.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-message.html#cfn-lex-bot-message-imageresponsecard
        UpdateType: Mutable
        Type: ImageResponseCard

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.Message')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PlainTextMessage,
        [parameter(Mandatory = $false)]
        $CustomPayload,
        [parameter(Mandatory = $false)]
        $SSMLMessage,
        [parameter(Mandatory = $false)]
        $ImageResponseCard
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
