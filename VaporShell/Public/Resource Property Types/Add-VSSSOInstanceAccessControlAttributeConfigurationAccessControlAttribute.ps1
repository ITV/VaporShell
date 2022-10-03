function Add-VSSSOInstanceAccessControlAttributeConfigurationAccessControlAttribute {
    <#
    .SYNOPSIS
        Adds an AWS::SSO::InstanceAccessControlAttributeConfiguration.AccessControlAttribute resource property to the template. These are AWS SSO identity store attributes that you can configure for use in attributes-based access control (ABAC. You can create permissions policies that determine who can access your AWS resources based upon the configured attribute values. When you enable ABAC and specify AccessControlAttributes, AWS SSO passes the attribute values of the authenticated user into IAM for use in policy evaluation.

    .DESCRIPTION
        Adds an AWS::SSO::InstanceAccessControlAttributeConfiguration.AccessControlAttribute resource property to the template.
These are AWS SSO identity store attributes that you can configure for use in attributes-based access control (ABAC. You can create permissions policies that determine who can access your AWS resources based upon the configured attribute values. When you enable ABAC and specify AccessControlAttributes, AWS SSO passes the attribute values of the authenticated user into IAM for use in policy evaluation.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute.html

    .PARAMETER Key
        The name of the attribute associated with your identities in your identity source. This is used to map a specified attribute in your identity source with an attribute in AWS SSO.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute.html#cfn-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute-key
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Value
        The value used for mapping a specified attribute to an identity source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute.html#cfn-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute-value
        UpdateType: Mutable
        Type: AccessControlAttributeValue

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttribute')]
    [cmdletbinding()]
    Param
    (
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
        $Key,
        [parameter(Mandatory = $true)]
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttribute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
