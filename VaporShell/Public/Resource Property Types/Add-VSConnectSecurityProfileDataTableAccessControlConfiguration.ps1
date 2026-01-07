function Add-VSConnectSecurityProfileDataTableAccessControlConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::SecurityProfile.DataTableAccessControlConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::SecurityProfile.DataTableAccessControlConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-datatableaccesscontrolconfiguration.html

    .PARAMETER PrimaryAttributeAccessControlConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-datatableaccesscontrolconfiguration.html#cfn-connect-securityprofile-datatableaccesscontrolconfiguration-primaryattributeaccesscontrolconfiguration
        UpdateType: Mutable
        Type: PrimaryAttributeAccessControlConfigurationItem

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.SecurityProfile.DataTableAccessControlConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PrimaryAttributeAccessControlConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.SecurityProfile.DataTableAccessControlConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
