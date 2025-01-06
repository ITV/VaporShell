function Add-VSAppSyncApiAuthProvider {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::Api.AuthProvider resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppSync::Api.AuthProvider resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-authprovider.html

    .PARAMETER OpenIDConnectConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-authprovider.html#cfn-appsync-api-authprovider-openidconnectconfig
        UpdateType: Mutable
        Type: OpenIDConnectConfig

    .PARAMETER CognitoConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-authprovider.html#cfn-appsync-api-authprovider-cognitoconfig
        UpdateType: Mutable
        Type: CognitoConfig

    .PARAMETER LambdaAuthorizerConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-authprovider.html#cfn-appsync-api-authprovider-lambdaauthorizerconfig
        UpdateType: Mutable
        Type: LambdaAuthorizerConfig

    .PARAMETER AuthType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-authprovider.html#cfn-appsync-api-authprovider-authtype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppSync.Api.AuthProvider')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OpenIDConnectConfig,

        [Parameter(Mandatory = $false)]
        $CognitoConfig,

        [Parameter(Mandatory = $false)]
        $LambdaAuthorizerConfig,

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
        $AuthType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.Api.AuthProvider'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
