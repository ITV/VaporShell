function Add-VSWisdomAIPromptAIPromptTemplateConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::AIPrompt.AIPromptTemplateConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::AIPrompt.AIPromptTemplateConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiprompt-aiprompttemplateconfiguration.html

    .PARAMETER TextFullAIPromptEditTemplateConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiprompt-aiprompttemplateconfiguration.html#cfn-wisdom-aiprompt-aiprompttemplateconfiguration-textfullaipromptedittemplateconfiguration
        UpdateType: Mutable
        Type: TextFullAIPromptEditTemplateConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.AIPrompt.AIPromptTemplateConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $TextFullAIPromptEditTemplateConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.AIPrompt.AIPromptTemplateConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
