function Add-VSLexBotUnifiedSpeechSettings {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.UnifiedSpeechSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.UnifiedSpeechSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-unifiedspeechsettings.html

    .PARAMETER SpeechFoundationModel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-unifiedspeechsettings.html#cfn-lex-bot-unifiedspeechsettings-speechfoundationmodel
        UpdateType: Mutable
        Type: SpeechFoundationModel

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.UnifiedSpeechSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $SpeechFoundationModel

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.UnifiedSpeechSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
