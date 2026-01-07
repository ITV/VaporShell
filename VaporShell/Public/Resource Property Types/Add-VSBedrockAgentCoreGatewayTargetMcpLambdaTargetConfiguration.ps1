function Add-VSBedrockAgentCoreGatewayTargetMcpLambdaTargetConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::GatewayTarget.McpLambdaTargetConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::GatewayTarget.McpLambdaTargetConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration.html

    .PARAMETER LambdaArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration-lambdaarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ToolSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration-toolschema
        UpdateType: Mutable
        Type: ToolSchema

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.GatewayTarget.McpLambdaTargetConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LambdaArn,

        [Parameter(Mandatory = $true)]
        $ToolSchema

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.GatewayTarget.McpLambdaTargetConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
