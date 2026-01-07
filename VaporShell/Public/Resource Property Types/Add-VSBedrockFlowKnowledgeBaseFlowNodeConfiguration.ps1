function Add-VSBedrockFlowKnowledgeBaseFlowNodeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.KnowledgeBaseFlowNodeConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.KnowledgeBaseFlowNodeConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html

    .PARAMETER OrchestrationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-orchestrationconfiguration
        UpdateType: Mutable
        Type: KnowledgeBaseOrchestrationConfiguration

    .PARAMETER GuardrailConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-guardrailconfiguration
        UpdateType: Mutable
        Type: GuardrailConfiguration

    .PARAMETER InferenceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-inferenceconfiguration
        UpdateType: Mutable
        Type: PromptInferenceConfiguration

    .PARAMETER KnowledgeBaseId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-knowledgebaseid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER PromptTemplate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-prompttemplate
        UpdateType: Mutable
        Type: KnowledgeBasePromptTemplate

    .PARAMETER RerankingConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-rerankingconfiguration
        UpdateType: Mutable
        Type: VectorSearchRerankingConfiguration

    .PARAMETER NumberOfResults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-numberofresults
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER ModelId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-modelid
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Flow.KnowledgeBaseFlowNodeConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OrchestrationConfiguration,

        [Parameter(Mandatory = $false)]
        $GuardrailConfiguration,

        [Parameter(Mandatory = $false)]
        $InferenceConfiguration,

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
        $KnowledgeBaseId,

        [Parameter(Mandatory = $false)]
        $PromptTemplate,

        [Parameter(Mandatory = $false)]
        $RerankingConfiguration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $NumberOfResults,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ModelId

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.KnowledgeBaseFlowNodeConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
