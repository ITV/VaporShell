function Add-VSQBusinessWebExperienceIdentityProviderConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QBusiness::WebExperience.IdentityProviderConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QBusiness::WebExperience.IdentityProviderConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-identityproviderconfiguration.html

    .PARAMETER OpenIDConnectConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-identityproviderconfiguration.html#cfn-qbusiness-webexperience-identityproviderconfiguration-openidconnectconfiguration
        UpdateType: Mutable
        Type: OpenIDConnectProviderConfiguration

    .PARAMETER SamlConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-identityproviderconfiguration.html#cfn-qbusiness-webexperience-identityproviderconfiguration-samlconfiguration
        UpdateType: Mutable
        Type: SamlProviderConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QBusiness.WebExperience.IdentityProviderConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OpenIDConnectConfiguration,
        [parameter(Mandatory = $false)]
        $SamlConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QBusiness.WebExperience.IdentityProviderConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
