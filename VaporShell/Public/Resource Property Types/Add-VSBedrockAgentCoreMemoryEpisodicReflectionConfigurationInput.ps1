function Add-VSBedrockAgentCoreMemoryEpisodicReflectionConfigurationInput {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.EpisodicReflectionConfigurationInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.EpisodicReflectionConfigurationInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-episodicreflectionconfigurationinput.html

    .PARAMETER Namespaces
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-episodicreflectionconfigurationinput.html#cfn-bedrockagentcore-memory-episodicreflectionconfigurationinput-namespaces
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.EpisodicReflectionConfigurationInput')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Namespaces

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.EpisodicReflectionConfigurationInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
