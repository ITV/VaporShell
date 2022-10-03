function Add-VSLexBotSlotValueSelectionSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.SlotValueSelectionSetting resource property to the template. Contains settings used by Amazon Lex to select a slot value.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.SlotValueSelectionSetting resource property to the template.
Contains settings used by Amazon Lex to select a slot value.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html

    .PARAMETER ResolutionStrategy
        Determines the slot resolution strategy that Amazon Lex uses to return slot type values. The field can be set to one of the following values:
+ OriginalValue - Returns the value entered by the user, if the user value is similar to a slot value.
+ TopResolution - If there is a resolution list for the slot, return the first value in the resolution list as the slot type value. If there is no resolution list, null is returned.
If you don't specify the valueSelectionStrategy, the default is OriginalValue.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html#cfn-lex-bot-slotvalueselectionsetting-resolutionstrategy
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RegexFilter
        A regular expression used to validate the value of a slot.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html#cfn-lex-bot-slotvalueselectionsetting-regexfilter
        UpdateType: Mutable
        Type: SlotValueRegexFilter

    .PARAMETER AdvancedRecognitionSetting
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html#cfn-lex-bot-slotvalueselectionsetting-advancedrecognitionsetting
        UpdateType: Mutable
        Type: AdvancedRecognitionSetting

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.SlotValueSelectionSetting')]
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
        $ResolutionStrategy,
        [parameter(Mandatory = $false)]
        $RegexFilter,
        [parameter(Mandatory = $false)]
        $AdvancedRecognitionSetting
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.SlotValueSelectionSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
