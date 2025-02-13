function Add-VSLexBotExternalSourceSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.ExternalSourceSetting resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.ExternalSourceSetting resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-externalsourcesetting.html

    .PARAMETER GrammarSlotTypeSetting
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-externalsourcesetting.html#cfn-lex-bot-externalsourcesetting-grammarslottypesetting
        UpdateType: Mutable
        Type: GrammarSlotTypeSetting

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.ExternalSourceSetting')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $GrammarSlotTypeSetting

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.ExternalSourceSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
