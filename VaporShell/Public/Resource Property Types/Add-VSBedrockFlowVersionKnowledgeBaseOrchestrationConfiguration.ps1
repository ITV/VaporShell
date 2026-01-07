function Add-VSBedrockFlowVersionKnowledgeBaseOrchestrationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::FlowVersion.KnowledgeBaseOrchestrationConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::FlowVersion.KnowledgeBaseOrchestrationConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html

    .PARAMETER InferenceConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-inferenceconfig
        UpdateType: Mutable
        Type: PromptInferenceConfiguration

    .PARAMETER AdditionalModelRequestFields
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-additionalmodelrequestfields
        UpdateType: Mutable
        PrimitiveType: Json

    .PARAMETER PerformanceConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-performanceconfig
        UpdateType: Mutable
        Type: PerformanceConfiguration

    .PARAMETER PromptTemplate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-prompttemplate
        UpdateType: Mutable
        Type: KnowledgeBasePromptTemplate

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.FlowVersion.KnowledgeBaseOrchestrationConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $InferenceConfig,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AdditionalModelRequestFields,

        [Parameter(Mandatory = $false)]
        $PerformanceConfig,

        [Parameter(Mandatory = $false)]
        $PromptTemplate

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                'AdditionalModelRequestFields' {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.FlowVersion.KnowledgeBaseOrchestrationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
