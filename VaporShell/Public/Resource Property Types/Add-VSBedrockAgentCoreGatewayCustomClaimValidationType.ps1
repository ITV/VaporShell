function Add-VSBedrockAgentCoreGatewayCustomClaimValidationType {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Gateway.CustomClaimValidationType resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Gateway.CustomClaimValidationType resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customclaimvalidationtype.html

    .PARAMETER AuthorizingClaimMatchValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customclaimvalidationtype.html#cfn-bedrockagentcore-gateway-customclaimvalidationtype-authorizingclaimmatchvalue
        UpdateType: Mutable
        Type: AuthorizingClaimMatchValueType

    .PARAMETER InboundTokenClaimName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customclaimvalidationtype.html#cfn-bedrockagentcore-gateway-customclaimvalidationtype-inboundtokenclaimname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InboundTokenClaimValueType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customclaimvalidationtype.html#cfn-bedrockagentcore-gateway-customclaimvalidationtype-inboundtokenclaimvaluetype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Gateway.CustomClaimValidationType')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $AuthorizingClaimMatchValue,

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
        $InboundTokenClaimName,

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
        $InboundTokenClaimValueType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Gateway.CustomClaimValidationType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
