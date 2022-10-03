function Add-VSLexBotSlot {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.Slot resource property to the template. Specifies the definition of a slot. Amazon Lex elicits slot values from uses to fulfill the user's intent.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.Slot resource property to the template.
Specifies the definition of a slot. Amazon Lex elicits slot values from uses to fulfill the user's intent.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html

    .PARAMETER Name
        The name of the slot.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-name
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Description
        A description of the slot type.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-description
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SlotTypeName
        The name of the slot type that this slot is based on. The slot type defines the acceptable values for the slot.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-slottypename
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ValueElicitationSetting
        Determines the slot resolution strategy that Amazon Lex uses to return slot type values. The field can be set to one of the following values:
+ OriginalValue - Returns the value entered by the user, if the user value is similar to a slot value.
+ TopResolution - If there is a resolution list for the slot, return the first value in the resolution list as the slot type value. If there is no resolution list, null is returned.
If you don't specify the valueSelectionStrategy, the default is OriginalValue.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-valueelicitationsetting
        UpdateType: Mutable
        Type: SlotValueElicitationSetting

    .PARAMETER ObfuscationSetting
        Determines whether the contents of the slot are obfuscated in Amazon CloudWatch Logs logs. Use obfuscated slots to protect information such as personally identifiable information PII in logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-obfuscationsetting
        UpdateType: Mutable
        Type: ObfuscationSetting

    .PARAMETER MultipleValuesSetting
        Determines whether the slot can return multiple values to the application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-multiplevaluessetting
        UpdateType: Mutable
        Type: MultipleValuesSetting

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.Slot')]
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
        $Name,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Description,
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
        $SlotTypeName,
        [parameter(Mandatory = $true)]
        $ValueElicitationSetting,
        [parameter(Mandatory = $false)]
        $ObfuscationSetting,
        [parameter(Mandatory = $false)]
        $MultipleValuesSetting
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.Slot'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
