function Add-VSBedrockAgentCoreGatewayCustomJWTAuthorizerConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Gateway.CustomJWTAuthorizerConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Gateway.CustomJWTAuthorizerConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customjwtauthorizerconfiguration.html

    .PARAMETER DiscoveryUrl
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customjwtauthorizerconfiguration.html#cfn-bedrockagentcore-gateway-customjwtauthorizerconfiguration-discoveryurl
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AllowedAudience
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customjwtauthorizerconfiguration.html#cfn-bedrockagentcore-gateway-customjwtauthorizerconfiguration-allowedaudience
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowedClients
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-customjwtauthorizerconfiguration.html#cfn-bedrockagentcore-gateway-customjwtauthorizerconfiguration-allowedclients
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Gateway.CustomJWTAuthorizerConfiguration')]
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
        $DiscoveryUrl,

        [Parameter(Mandatory = $false)]
        $AllowedAudience,

        [Parameter(Mandatory = $false)]
        $AllowedClients

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Gateway.CustomJWTAuthorizerConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
