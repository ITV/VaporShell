function Add-VSLexBotGenerativeAISettings {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.GenerativeAISettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.GenerativeAISettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-generativeaisettings.html

    .PARAMETER RuntimeSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-generativeaisettings.html#cfn-lex-bot-generativeaisettings-runtimesettings
        UpdateType: Mutable
        Type: RuntimeSettings

    .PARAMETER BuildtimeSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-generativeaisettings.html#cfn-lex-bot-generativeaisettings-buildtimesettings
        UpdateType: Mutable
        Type: BuildtimeSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.GenerativeAISettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RuntimeSettings,

        [Parameter(Mandatory = $false)]
        $BuildtimeSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.GenerativeAISettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
