function Add-VSBedrockAgentCoreMemoryUserPreferenceOverride {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.UserPreferenceOverride resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.UserPreferenceOverride resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverride.html

    .PARAMETER Consolidation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverride.html#cfn-bedrockagentcore-memory-userpreferenceoverride-consolidation
        UpdateType: Mutable
        Type: UserPreferenceOverrideConsolidationConfigurationInput

    .PARAMETER Extraction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverride.html#cfn-bedrockagentcore-memory-userpreferenceoverride-extraction
        UpdateType: Mutable
        Type: UserPreferenceOverrideExtractionConfigurationInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.UserPreferenceOverride')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.UserPreferenceOverride'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
