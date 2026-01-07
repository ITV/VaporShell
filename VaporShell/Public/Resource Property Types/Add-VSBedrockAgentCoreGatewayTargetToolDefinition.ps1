function Add-VSBedrockAgentCoreGatewayTargetToolDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::GatewayTarget.ToolDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::GatewayTarget.ToolDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html

    .PARAMETER OutputSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-outputschema
        UpdateType: Mutable
        Type: SchemaDefinition

    .PARAMETER Description
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-description
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InputSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-inputschema
        UpdateType: Mutable
        Type: SchemaDefinition

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.GatewayTarget.ToolDefinition')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OutputSchema,

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
        $Description,

        [Parameter(Mandatory = $true)]
        $InputSchema,

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
        $Name

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.GatewayTarget.ToolDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
