function Add-VSLexBotAliasCodeHookSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::BotAlias.CodeHookSpecification resource property to the template. Contains information about code hooks that Amazon Lex calls during a conversation.

    .DESCRIPTION
        Adds an AWS::Lex::BotAlias.CodeHookSpecification resource property to the template.
Contains information about code hooks that Amazon Lex calls during a conversation.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-codehookspecification.html

    .PARAMETER LambdaCodeHook
        Specifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-codehookspecification.html#cfn-lex-botalias-codehookspecification-lambdacodehook
        UpdateType: Mutable
        Type: LambdaCodeHook

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.BotAlias.CodeHookSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $LambdaCodeHook
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.BotAlias.CodeHookSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
