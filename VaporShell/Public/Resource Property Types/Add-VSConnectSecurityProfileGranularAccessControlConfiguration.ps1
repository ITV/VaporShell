function Add-VSConnectSecurityProfileGranularAccessControlConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::SecurityProfile.GranularAccessControlConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::SecurityProfile.GranularAccessControlConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-granularaccesscontrolconfiguration.html

    .PARAMETER DataTableAccessControlConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-granularaccesscontrolconfiguration.html#cfn-connect-securityprofile-granularaccesscontrolconfiguration-datatableaccesscontrolconfiguration
        UpdateType: Mutable
        Type: DataTableAccessControlConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.SecurityProfile.GranularAccessControlConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DataTableAccessControlConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.SecurityProfile.GranularAccessControlConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
