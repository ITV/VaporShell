function Add-VSAppFlowConnectorProfileConnectorProfileConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileConfig resource property to the template. Defines the connector-specific configuration and credentials for the connector profile.

    .DESCRIPTION
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileConfig resource property to the template.
Defines the connector-specific configuration and credentials for the connector profile.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileconfig.html

    .PARAMETER ConnectorProfileProperties
        The connector-specific properties of the profile configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileconfig.html#cfn-appflow-connectorprofile-connectorprofileconfig-connectorprofileproperties
        UpdateType: Mutable
        Type: ConnectorProfileProperties

    .PARAMETER ConnectorProfileCredentials
        The connector-specific credentials required by each connector.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileconfig.html#cfn-appflow-connectorprofile-connectorprofileconfig-connectorprofilecredentials
        UpdateType: Mutable
        Type: ConnectorProfileCredentials

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileConfig')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","ConnectorProfileCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","ConnectorProfileCredentials")]
    Param
    (
        [parameter(Mandatory = $false)]
        $ConnectorProfileProperties,
        [parameter(Mandatory = $true)]
        $ConnectorProfileCredentials
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
