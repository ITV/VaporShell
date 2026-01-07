function Add-VSBedrockAgentCoreGatewayAuthorizingClaimMatchValueType {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Gateway.AuthorizingClaimMatchValueType resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Gateway.AuthorizingClaimMatchValueType resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-authorizingclaimmatchvaluetype.html

    .PARAMETER ClaimMatchValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-authorizingclaimmatchvaluetype.html#cfn-bedrockagentcore-gateway-authorizingclaimmatchvaluetype-claimmatchvalue
        UpdateType: Mutable
        Type: ClaimMatchValueType

    .PARAMETER ClaimMatchOperator
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-authorizingclaimmatchvaluetype.html#cfn-bedrockagentcore-gateway-authorizingclaimmatchvaluetype-claimmatchoperator
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Gateway.AuthorizingClaimMatchValueType')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ClaimMatchValue,

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
        $ClaimMatchOperator

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Gateway.AuthorizingClaimMatchValueType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
