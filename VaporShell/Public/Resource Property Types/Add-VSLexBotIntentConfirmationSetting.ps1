function Add-VSLexBotIntentConfirmationSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.IntentConfirmationSetting resource property to the template. Provides a prompt for making sure that the user is ready for the intent to be fulfilled.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.IntentConfirmationSetting resource property to the template.
Provides a prompt for making sure that the user is ready for the intent to be fulfilled.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html

    .PARAMETER PromptSpecification
        Prompts the user to confirm the intent. This question should have a yes or no answer.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-promptspecification
        UpdateType: Mutable
        Type: PromptSpecification

    .PARAMETER DeclinationResponse
        When the user answers "no" to the question defined in PromptSpecification, Amazon Lex responds with this response to acknowledge that the intent was canceled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-declinationresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER IsActive
        Specifies whether the intent's confirmation is sent to the user. When this field is false, confirmation and declination responses aren't sent and processing continues as if the responses aren't present. If the active field isn't specified, the default is true.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-intentconfirmationsetting.html#cfn-lex-bot-intentconfirmationsetting-isactive
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.IntentConfirmationSetting')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $PromptSpecification,
        [parameter(Mandatory = $true)]
        $DeclinationResponse,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.IntentConfirmationSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
