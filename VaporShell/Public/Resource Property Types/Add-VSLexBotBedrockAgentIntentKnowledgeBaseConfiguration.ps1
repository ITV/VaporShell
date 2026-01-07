function Add-VSLexBotBedrockAgentIntentKnowledgeBaseConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.BedrockAgentIntentKnowledgeBaseConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.BedrockAgentIntentKnowledgeBaseConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentknowledgebaseconfiguration.html

    .PARAMETER BedrockModelConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentknowledgebaseconfiguration.html#cfn-lex-bot-bedrockagentintentknowledgebaseconfiguration-bedrockmodelconfiguration
        UpdateType: Mutable
        Type: BedrockModelSpecification

    .PARAMETER BedrockKnowledgeBaseArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockagentintentknowledgebaseconfiguration.html#cfn-lex-bot-bedrockagentintentknowledgebaseconfiguration-bedrockknowledgebasearn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.BedrockAgentIntentKnowledgeBaseConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $BedrockModelConfiguration,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BedrockKnowledgeBaseArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.BedrockAgentIntentKnowledgeBaseConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
