function Add-VSBedrockAgentCoreMemoryEpisodicOverride {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.EpisodicOverride resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.EpisodicOverride resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-episodicoverride.html

    .PARAMETER Consolidation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-episodicoverride.html#cfn-bedrockagentcore-memory-episodicoverride-consolidation
        UpdateType: Mutable
        Type: EpisodicOverrideConsolidationConfigurationInput

    .PARAMETER Extraction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-episodicoverride.html#cfn-bedrockagentcore-memory-episodicoverride-extraction
        UpdateType: Mutable
        Type: EpisodicOverrideExtractionConfigurationInput

    .PARAMETER Reflection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-episodicoverride.html#cfn-bedrockagentcore-memory-episodicoverride-reflection
        UpdateType: Mutable
        Type: EpisodicOverrideReflectionConfigurationInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.EpisodicOverride')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Consolidation,

        [Parameter(Mandatory = $false)]
        $Extraction,

        [Parameter(Mandatory = $false)]
        $Reflection

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.EpisodicOverride'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
