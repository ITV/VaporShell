function Add-VSAppSyncDataSourceAuthorizationConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::DataSource.AuthorizationConfig resource property to the template. The AuthorizationConfig property type specifies the authorization type and configuration for an AWS AppSync http data source.

    .DESCRIPTION
        Adds an AWS::AppSync::DataSource.AuthorizationConfig resource property to the template.
The AuthorizationConfig property type specifies the authorization type and configuration for an AWS AppSync http data source.

AuthorizationConfig is a property of the AWS AppSync DataSource HttpConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html

    .PARAMETER AwsIamConfig
        The AWS Identity and Access Management settings.

        Type: AwsIamConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-awsiamconfig
        UpdateType: Mutable

    .PARAMETER AuthorizationType
        The authorization type that the HTTP endpoint requires.
+  **AWS_IAM**: The authorization type is Signature Version 4 SigV4.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-authorizationtype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppSync.DataSource.AuthorizationConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AwsIamConfig,
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
        $AuthorizationType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.DataSource.AuthorizationConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
