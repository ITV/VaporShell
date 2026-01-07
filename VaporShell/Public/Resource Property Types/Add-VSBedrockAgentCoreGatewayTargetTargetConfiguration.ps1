function Add-VSBedrockAgentCoreGatewayTargetTargetConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::GatewayTarget.TargetConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::GatewayTarget.TargetConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-targetconfiguration.html

    .PARAMETER Mcp
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-targetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-targetconfiguration-mcp
        UpdateType: Mutable
        Type: McpTargetConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.GatewayTarget.TargetConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Mcp

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.GatewayTarget.TargetConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
