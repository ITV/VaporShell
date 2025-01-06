function Add-VSBedrockPromptChatPromptTemplateConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Prompt.ChatPromptTemplateConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Prompt.ChatPromptTemplateConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-chatprompttemplateconfiguration.html

    .PARAMETER Messages
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-chatprompttemplateconfiguration.html#cfn-bedrock-prompt-chatprompttemplateconfiguration-messages
        UpdateType: Mutable
        Type: List
        ItemType: Message
        DuplicatesAllowed: True

    .PARAMETER InputVariables
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-chatprompttemplateconfiguration.html#cfn-bedrock-prompt-chatprompttemplateconfiguration-inputvariables
        UpdateType: Mutable
        Type: List
        ItemType: PromptInputVariable
        DuplicatesAllowed: True

    .PARAMETER ToolConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-chatprompttemplateconfiguration.html#cfn-bedrock-prompt-chatprompttemplateconfiguration-toolconfiguration
        UpdateType: Mutable
        Type: ToolConfiguration

    .PARAMETER System
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-chatprompttemplateconfiguration.html#cfn-bedrock-prompt-chatprompttemplateconfiguration-system
        UpdateType: Mutable
        Type: List
        ItemType: SystemContentBlock
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Prompt.ChatPromptTemplateConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.Prompt.Message"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Messages,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.Prompt.PromptInputVariable"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InputVariables,

        [Parameter(Mandatory = $false)]
        $ToolConfiguration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.Prompt.SystemContentBlock"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $System

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Prompt.ChatPromptTemplateConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
