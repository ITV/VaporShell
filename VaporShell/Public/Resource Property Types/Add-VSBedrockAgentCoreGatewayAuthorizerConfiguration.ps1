function Add-VSBedrockAgentCoreGatewayAuthorizerConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Gateway.AuthorizerConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Gateway.AuthorizerConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-authorizerconfiguration.html

    .PARAMETER CustomJWTAuthorizer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-authorizerconfiguration.html#cfn-bedrockagentcore-gateway-authorizerconfiguration-customjwtauthorizer
        UpdateType: Mutable
        Type: CustomJWTAuthorizerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Gateway.AuthorizerConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $CustomJWTAuthorizer

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Gateway.AuthorizerConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
