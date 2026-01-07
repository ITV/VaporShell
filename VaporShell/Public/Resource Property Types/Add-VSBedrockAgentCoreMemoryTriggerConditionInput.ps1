function Add-VSBedrockAgentCoreMemoryTriggerConditionInput {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Memory.TriggerConditionInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Memory.TriggerConditionInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html

    .PARAMETER MessageBasedTrigger
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html#cfn-bedrockagentcore-memory-triggerconditioninput-messagebasedtrigger
        UpdateType: Mutable
        Type: MessageBasedTriggerInput

    .PARAMETER TokenBasedTrigger
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html#cfn-bedrockagentcore-memory-triggerconditioninput-tokenbasedtrigger
        UpdateType: Mutable
        Type: TokenBasedTriggerInput

    .PARAMETER TimeBasedTrigger
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html#cfn-bedrockagentcore-memory-triggerconditioninput-timebasedtrigger
        UpdateType: Mutable
        Type: TimeBasedTriggerInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Memory.TriggerConditionInput')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MessageBasedTrigger,

        [Parameter(Mandatory = $false)]
        $TokenBasedTrigger,

        [Parameter(Mandatory = $false)]
        $TimeBasedTrigger

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Memory.TriggerConditionInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
