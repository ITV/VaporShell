function Add-VSBedrockAgentCoreGatewayTargetCredentialProvider {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::GatewayTarget.CredentialProvider resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::GatewayTarget.CredentialProvider resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialprovider.html

    .PARAMETER OauthCredentialProvider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialprovider.html#cfn-bedrockagentcore-gatewaytarget-credentialprovider-oauthcredentialprovider
        UpdateType: Mutable
        Type: OAuthCredentialProvider

    .PARAMETER ApiKeyCredentialProvider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialprovider.html#cfn-bedrockagentcore-gatewaytarget-credentialprovider-apikeycredentialprovider
        UpdateType: Mutable
        Type: ApiKeyCredentialProvider

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.GatewayTarget.CredentialProvider')]
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","OauthCredentialProvider")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","OauthCredentialProvider")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","ApiKeyCredentialProvider")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","ApiKeyCredentialProvider")]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OauthCredentialProvider,

        [Parameter(Mandatory = $false)]
        $ApiKeyCredentialProvider

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.GatewayTarget.CredentialProvider'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
