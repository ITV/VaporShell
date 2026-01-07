function Add-VSBedrockAgentCoreMemorySummaryOverride {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.SummaryOverride resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.SummaryOverride resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summaryoverride.html

    .PARAMETER Consolidation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summaryoverride.html#cfn-bedrockagentcore-memory-summaryoverride-consolidation
        UpdateType: Mutable
        Type: SummaryOverrideConsolidationConfigurationInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.SummaryOverride')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Consolidation

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.SummaryOverride'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
