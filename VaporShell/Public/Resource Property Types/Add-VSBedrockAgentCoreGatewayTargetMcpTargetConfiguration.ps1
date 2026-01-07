function Add-VSBedrockAgentCoreGatewayTargetMcpTargetConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::GatewayTarget.McpTargetConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::GatewayTarget.McpTargetConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html

    .PARAMETER McpServer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcptargetconfiguration-mcpserver
        UpdateType: Mutable
        Type: McpServerTargetConfiguration

    .PARAMETER OpenApiSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcptargetconfiguration-openapischema
        UpdateType: Mutable
        Type: ApiSchemaConfiguration

    .PARAMETER SmithyModel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcptargetconfiguration-smithymodel
        UpdateType: Mutable
        Type: ApiSchemaConfiguration

    .PARAMETER Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcptargetconfiguration-lambda
        UpdateType: Mutable
        Type: McpLambdaTargetConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.GatewayTarget.McpTargetConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $McpServer,

        [Parameter(Mandatory = $false)]
        $OpenApiSchema,

        [Parameter(Mandatory = $false)]
        $SmithyModel,

        [Parameter(Mandatory = $false)]
        $Lambda

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.GatewayTarget.McpTargetConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
