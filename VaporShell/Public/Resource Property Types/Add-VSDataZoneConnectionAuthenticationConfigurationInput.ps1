function Add-VSDataZoneConnectionAuthenticationConfigurationInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::Connection.AuthenticationConfigurationInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::Connection.AuthenticationConfigurationInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html

    .PARAMETER SecretArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-secretarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER KmsKeyArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-kmskeyarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER OAuth2Properties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-oauth2properties
        UpdateType: Mutable
        Type: OAuth2Properties

    .PARAMETER CustomAuthenticationCredentials
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-customauthenticationcredentials
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER BasicAuthenticationCredentials
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-basicauthenticationcredentials
        UpdateType: Mutable
        Type: BasicAuthenticationCredentials

    .PARAMETER AuthenticationType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-authenticationtype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.Connection.AuthenticationConfigurationInput')]
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","CustomAuthenticationCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","CustomAuthenticationCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","BasicAuthenticationCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","BasicAuthenticationCredentials")]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SecretArn,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KmsKeyArn,

        [Parameter(Mandatory = $false)]
        $OAuth2Properties,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $CustomAuthenticationCredentials,

        [Parameter(Mandatory = $false)]
        $BasicAuthenticationCredentials,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.Connection.AuthenticationConfigurationInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
