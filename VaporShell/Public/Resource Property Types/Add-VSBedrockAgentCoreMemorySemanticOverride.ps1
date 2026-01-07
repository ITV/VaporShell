function Add-VSBedrockAgentCoreMemorySemanticOverride {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.SemanticOverride resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.SemanticOverride resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverride.html

    .PARAMETER Consolidation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverride.html#cfn-bedrockagentcore-memory-semanticoverride-consolidation
        UpdateType: Mutable
        Type: SemanticOverrideConsolidationConfigurationInput

    .PARAMETER Extraction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverride.html#cfn-bedrockagentcore-memory-semanticoverride-extraction
        UpdateType: Mutable
        Type: SemanticOverrideExtractionConfigurationInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.SemanticOverride')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Consolidation,

        [Parameter(Mandatory = $false)]
        $Extraction

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.SemanticOverride'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
