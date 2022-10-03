function Add-VSSSOInstanceAccessControlAttributeConfigurationAccessControlAttributeValue {
    <#
    .SYNOPSIS
        Adds an AWS::SSO::InstanceAccessControlAttributeConfiguration.AccessControlAttributeValue resource property to the template. The value used for mapping a specified attribute to an identity source.

    .DESCRIPTION
        Adds an AWS::SSO::InstanceAccessControlAttributeConfiguration.AccessControlAttributeValue resource property to the template.
The value used for mapping a specified attribute to an identity source.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattributevalue.html

    .PARAMETER Source
        The identity source to use when mapping a specified attribute to AWS SSO.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattributevalue.html#cfn-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattributevalue-source
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttributeValue')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Source
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttributeValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
