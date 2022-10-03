function Add-VSLexBotWaitAndContinueSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.WaitAndContinueSpecification resource property to the template. Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.WaitAndContinueSpecification resource property to the template.
Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html

    .PARAMETER WaitingResponse
        The response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-waitingresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER ContinueResponse
        The response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-continueresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER StillWaitingResponse
        A response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-stillwaitingresponse
        UpdateType: Mutable
        Type: StillWaitingResponseSpecification

    .PARAMETER IsActive
        Specifies whether the bot will wait for a user to respond. When this field is false, wait and continue responses for a slot aren't used and the bot expects an appropriate response within the configured timeout. If the IsActive field isn't specified, the default is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-isactive
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.WaitAndContinueSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $WaitingResponse,
        [parameter(Mandatory = $true)]
        $ContinueResponse,
        [parameter(Mandatory = $false)]
        $StillWaitingResponse,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IsActive
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.WaitAndContinueSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
