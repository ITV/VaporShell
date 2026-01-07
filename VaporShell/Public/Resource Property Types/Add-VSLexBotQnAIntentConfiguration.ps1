function Add-VSLexBotQnAIntentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.QnAIntentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.QnAIntentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnaintentconfiguration.html

    .PARAMETER BedrockModelConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnaintentconfiguration.html#cfn-lex-bot-qnaintentconfiguration-bedrockmodelconfiguration
        UpdateType: Mutable
        Type: BedrockModelSpecification

    .PARAMETER DataSourceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnaintentconfiguration.html#cfn-lex-bot-qnaintentconfiguration-datasourceconfiguration
        UpdateType: Mutable
        Type: DataSourceConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.QnAIntentConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $BedrockModelConfiguration,

        [Parameter(Mandatory = $true)]
        $DataSourceConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.QnAIntentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
