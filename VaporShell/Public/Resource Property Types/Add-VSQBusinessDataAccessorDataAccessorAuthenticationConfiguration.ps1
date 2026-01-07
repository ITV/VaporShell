function Add-VSQBusinessDataAccessorDataAccessorAuthenticationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QBusiness::DataAccessor.DataAccessorAuthenticationConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QBusiness::DataAccessor.DataAccessorAuthenticationConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationconfiguration.html

    .PARAMETER IdcTrustedTokenIssuerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationconfiguration.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationconfiguration-idctrustedtokenissuerconfiguration
        UpdateType: Mutable
        Type: DataAccessorIdcTrustedTokenIssuerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QBusiness.DataAccessor.DataAccessorAuthenticationConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $IdcTrustedTokenIssuerConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QBusiness.DataAccessor.DataAccessorAuthenticationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
