function Add-VSDataZoneConnectionOAuth2Properties {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::Connection.OAuth2Properties resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::Connection.OAuth2Properties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html

    .PARAMETER AuthorizationCodeProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-authorizationcodeproperties
        UpdateType: Mutable
        Type: AuthorizationCodeProperties

    .PARAMETER OAuth2ClientApplication
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-oauth2clientapplication
        UpdateType: Mutable
        Type: OAuth2ClientApplication

    .PARAMETER TokenUrl
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-tokenurl
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER OAuth2Credentials
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-oauth2credentials
        UpdateType: Mutable
        Type: GlueOAuth2Credentials

    .PARAMETER OAuth2GrantType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-oauth2granttype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TokenUrlParametersMap
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-tokenurlparametersmap
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.Connection.OAuth2Properties')]
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","OAuth2Credentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","OAuth2Credentials")]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AuthorizationCodeProperties,

        [Parameter(Mandatory = $false)]
        $OAuth2ClientApplication,

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
        $TokenUrl,

        [Parameter(Mandatory = $false)]
        $OAuth2Credentials,

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
        $OAuth2GrantType,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $TokenUrlParametersMap

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.Connection.OAuth2Properties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
