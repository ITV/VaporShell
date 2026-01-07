function Add-VSLexBotBedrockAgentIntentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.BedrockAgentIntentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.BedrockAgentIntentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentconfiguration.html

    .PARAMETER BedrockAgentConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentconfiguration.html#cfn-lex-bot-bedrockagentintentconfiguration-bedrockagentconfiguration
        UpdateType: Mutable
        Type: BedrockAgentConfiguration

    .PARAMETER BedrockAgentIntentKnowledgeBaseConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentconfiguration.html#cfn-lex-bot-bedrockagentintentconfiguration-bedrockagentintentknowledgebaseconfiguration
        UpdateType: Mutable
        Type: BedrockAgentIntentKnowledgeBaseConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.BedrockAgentIntentConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $BedrockAgentConfiguration,

        [Parameter(Mandatory = $false)]
        $BedrockAgentIntentKnowledgeBaseConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.BedrockAgentIntentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
