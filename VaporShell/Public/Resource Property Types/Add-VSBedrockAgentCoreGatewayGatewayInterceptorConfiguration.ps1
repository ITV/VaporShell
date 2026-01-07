function Add-VSBedrockAgentCoreGatewayGatewayInterceptorConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Gateway.GatewayInterceptorConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Gateway.GatewayInterceptorConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayinterceptorconfiguration.html

    .PARAMETER InterceptionPoints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayinterceptorconfiguration.html#cfn-bedrockagentcore-gateway-gatewayinterceptorconfiguration-interceptionpoints
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Interceptor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayinterceptorconfiguration.html#cfn-bedrockagentcore-gateway-gatewayinterceptorconfiguration-interceptor
        UpdateType: Mutable
        Type: InterceptorConfiguration

    .PARAMETER InputConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayinterceptorconfiguration.html#cfn-bedrockagentcore-gateway-gatewayinterceptorconfiguration-inputconfiguration
        UpdateType: Mutable
        Type: InterceptorInputConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Gateway.GatewayInterceptorConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $InterceptionPoints,

        [Parameter(Mandatory = $true)]
        $Interceptor,

        [Parameter(Mandatory = $false)]
        $InputConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Gateway.GatewayInterceptorConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
