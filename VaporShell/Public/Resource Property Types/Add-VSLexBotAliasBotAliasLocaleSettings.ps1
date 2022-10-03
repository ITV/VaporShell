function Add-VSLexBotAliasBotAliasLocaleSettings {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::BotAlias.BotAliasLocaleSettings resource property to the template. Specifies settings that are unique to a locale. For example, you can use different Lambda function depending on the bot's locale.

    .DESCRIPTION
        Adds an AWS::Lex::BotAlias.BotAliasLocaleSettings resource property to the template.
Specifies settings that are unique to a locale. For example, you can use different Lambda function depending on the bot's locale.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettings.html

    .PARAMETER CodeHookSpecification
        Specifies the Lambda function that should be used in the locale.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettings.html#cfn-lex-botalias-botaliaslocalesettings-codehookspecification
        UpdateType: Mutable
        Type: CodeHookSpecification

    .PARAMETER Enabled
        Determines whether the locale is enabled for the bot. If the value is false, the locale isn't available for use.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettings.html#cfn-lex-botalias-botaliaslocalesettings-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.BotAlias.BotAliasLocaleSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CodeHookSpecification,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.BotAlias.BotAliasLocaleSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
