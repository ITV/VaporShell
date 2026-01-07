function Add-VSLexBotDataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.DataSourceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.DataSourceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html

    .PARAMETER BedrockKnowledgeStoreConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html#cfn-lex-bot-datasourceconfiguration-bedrockknowledgestoreconfiguration
        UpdateType: Mutable
        Type: BedrockKnowledgeStoreConfiguration

    .PARAMETER KendraConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html#cfn-lex-bot-datasourceconfiguration-kendraconfiguration
        UpdateType: Mutable
        Type: QnAKendraConfiguration

    .PARAMETER OpensearchConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html#cfn-lex-bot-datasourceconfiguration-opensearchconfiguration
        UpdateType: Mutable
        Type: OpensearchConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.DataSourceConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $BedrockKnowledgeStoreConfiguration,

        [Parameter(Mandatory = $false)]
        $KendraConfiguration,

        [Parameter(Mandatory = $false)]
        $OpensearchConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.DataSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
