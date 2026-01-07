function Add-VSBedrockAgentCoreGatewayGatewayProtocolConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Gateway.GatewayProtocolConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Gateway.GatewayProtocolConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayprotocolconfiguration.html

    .PARAMETER Mcp
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayprotocolconfiguration.html#cfn-bedrockagentcore-gateway-gatewayprotocolconfiguration-mcp
        UpdateType: Mutable
        Type: MCPGatewayConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Gateway.GatewayProtocolConfiguration')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Gateway.GatewayProtocolConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
