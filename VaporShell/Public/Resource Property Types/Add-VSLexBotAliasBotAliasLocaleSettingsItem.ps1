function Add-VSLexBotAliasBotAliasLocaleSettingsItem {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::BotAlias.BotAliasLocaleSettingsItem resource property to the template. Specifies settings that are unique to a locale. For example, you can use different Lambda function depending on the bot's locale.

    .DESCRIPTION
        Adds an AWS::Lex::BotAlias.BotAliasLocaleSettingsItem resource property to the template.
Specifies settings that are unique to a locale. For example, you can use different Lambda function depending on the bot's locale.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettingsitem.html

    .PARAMETER LocaleId
        The unique identifier of the locale.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettingsitem.html#cfn-lex-botalias-botaliaslocalesettingsitem-localeid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER BotAliasLocaleSetting
        Specifies settings that are unique to a locale.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettingsitem.html#cfn-lex-botalias-botaliaslocalesettingsitem-botaliaslocalesetting
        UpdateType: Mutable
        Type: BotAliasLocaleSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.BotAlias.BotAliasLocaleSettingsItem')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LocaleId,
        [parameter(Mandatory = $true)]
        $BotAliasLocaleSetting
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.BotAlias.BotAliasLocaleSettingsItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
