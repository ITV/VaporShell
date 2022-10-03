function Add-VSAppSyncGraphQLApiAdditionalAuthenticationProvider {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::GraphQLApi.AdditionalAuthenticationProvider resource property to the template. Describes an additional authentication provider.

    .DESCRIPTION
        Adds an AWS::AppSync::GraphQLApi.AdditionalAuthenticationProvider resource property to the template.
Describes an additional authentication provider.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html

    .PARAMETER OpenIDConnectConfig
        The OIDC configuration.

        Type: OpenIDConnectConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-openidconnectconfig
        UpdateType: Mutable

    .PARAMETER LambdaAuthorizerConfig
        Configuration for AWS Lambda function authorization.

        Type: LambdaAuthorizerConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-lambdaauthorizerconfig
        UpdateType: Mutable

    .PARAMETER UserPoolConfig
        The Amazon Cognito user pool configuration.

        Type: CognitoUserPoolConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-userpoolconfig
        UpdateType: Mutable

    .PARAMETER AuthenticationType
        The authentication type for API key, AWS Identity and Access Management, OIDC, Amazon Cognito user pools, or AWS Lambda.
Valid Values: API_KEY | AWS_IAM | OPENID_CONNECT | AMAZON_COGNITO_USER_POOLS | AWS_LAMBDA

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-authenticationtype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppSync.GraphQLApi.AdditionalAuthenticationProvider')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OpenIDConnectConfig,
        [parameter(Mandatory = $false)]
        $LambdaAuthorizerConfig,
        [parameter(Mandatory = $false)]
        $UserPoolConfig,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AuthenticationType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.GraphQLApi.AdditionalAuthenticationProvider'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
