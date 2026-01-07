function Add-VSBedrockAgentCoreMemoryCustomConfigurationInput {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.CustomConfigurationInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.CustomConfigurationInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html

    .PARAMETER SummaryOverride
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-summaryoverride
        UpdateType: Mutable
        Type: SummaryOverride

    .PARAMETER UserPreferenceOverride
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-userpreferenceoverride
        UpdateType: Mutable
        Type: UserPreferenceOverride

    .PARAMETER EpisodicOverride
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-episodicoverride
        UpdateType: Mutable
        Type: EpisodicOverride

    .PARAMETER SemanticOverride
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-semanticoverride
        UpdateType: Mutable
        Type: SemanticOverride

    .PARAMETER SelfManagedConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-selfmanagedconfiguration
        UpdateType: Mutable
        Type: SelfManagedConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.CustomConfigurationInput')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SummaryOverride,

        [Parameter(Mandatory = $false)]
        $UserPreferenceOverride,

        [Parameter(Mandatory = $false)]
        $EpisodicOverride,

        [Parameter(Mandatory = $false)]
        $SemanticOverride,

        [Parameter(Mandatory = $false)]
        $SelfManagedConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.CustomConfigurationInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
