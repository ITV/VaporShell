function Add-VSBedrockAgentCoreRuntimeAgentRuntimeArtifact {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Runtime.AgentRuntimeArtifact resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Runtime.AgentRuntimeArtifact resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-agentruntimeartifact.html

    .PARAMETER CodeConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-agentruntimeartifact.html#cfn-bedrockagentcore-runtime-agentruntimeartifact-codeconfiguration
        UpdateType: Mutable
        Type: CodeConfiguration

    .PARAMETER ContainerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-agentruntimeartifact.html#cfn-bedrockagentcore-runtime-agentruntimeartifact-containerconfiguration
        UpdateType: Mutable
        Type: ContainerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Runtime.AgentRuntimeArtifact')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CodeConfiguration,

        [Parameter(Mandatory = $false)]
        $ContainerConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Runtime.AgentRuntimeArtifact'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
