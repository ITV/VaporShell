function Add-VSBedrockAgentCoreMemoryMemoryStrategy {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.MemoryStrategy resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.MemoryStrategy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html

    .PARAMETER SummaryMemoryStrategy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-summarymemorystrategy
        UpdateType: Mutable
        Type: SummaryMemoryStrategy

    .PARAMETER CustomMemoryStrategy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-custommemorystrategy
        UpdateType: Mutable
        Type: CustomMemoryStrategy

    .PARAMETER SemanticMemoryStrategy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-semanticmemorystrategy
        UpdateType: Mutable
        Type: SemanticMemoryStrategy

    .PARAMETER UserPreferenceMemoryStrategy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-userpreferencememorystrategy
        UpdateType: Mutable
        Type: UserPreferenceMemoryStrategy

    .PARAMETER EpisodicMemoryStrategy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-episodicmemorystrategy
        UpdateType: Mutable
        Type: EpisodicMemoryStrategy

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.MemoryStrategy')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SummaryMemoryStrategy,

        [Parameter(Mandatory = $false)]
        $CustomMemoryStrategy,

        [Parameter(Mandatory = $false)]
        $SemanticMemoryStrategy,

        [Parameter(Mandatory = $false)]
        $UserPreferenceMemoryStrategy,

        [Parameter(Mandatory = $false)]
        $EpisodicMemoryStrategy

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.MemoryStrategy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
