function Add-VSWisdomAssistantAssociationExternalBedrockKnowledgeBaseConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::AssistantAssociation.ExternalBedrockKnowledgeBaseConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::AssistantAssociation.ExternalBedrockKnowledgeBaseConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-assistantassociation-externalbedrockknowledgebaseconfig.html

    .PARAMETER AccessRoleArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-assistantassociation-externalbedrockknowledgebaseconfig.html#cfn-wisdom-assistantassociation-externalbedrockknowledgebaseconfig-accessrolearn
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER BedrockKnowledgeBaseArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-assistantassociation-externalbedrockknowledgebaseconfig.html#cfn-wisdom-assistantassociation-externalbedrockknowledgebaseconfig-bedrockknowledgebasearn
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.AssistantAssociation.ExternalBedrockKnowledgeBaseConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AccessRoleArn,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BedrockKnowledgeBaseArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.AssistantAssociation.ExternalBedrockKnowledgeBaseConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
