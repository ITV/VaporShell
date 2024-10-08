function Add-VSAppFlowConnectorProfileConnectorProfileProperties {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html

    .PARAMETER ServiceNow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-servicenow
        UpdateType: Mutable
        Type: ServiceNowConnectorProfileProperties

    .PARAMETER CustomConnector
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-customconnector
        UpdateType: Mutable
        Type: CustomConnectorProfileProperties

    .PARAMETER SAPOData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-sapodata
        UpdateType: Mutable
        Type: SAPODataConnectorProfileProperties

    .PARAMETER Pardot
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-pardot
        UpdateType: Mutable
        Type: PardotConnectorProfileProperties

    .PARAMETER Veeva
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-veeva
        UpdateType: Mutable
        Type: VeevaConnectorProfileProperties

    .PARAMETER Datadog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-datadog
        UpdateType: Mutable
        Type: DatadogConnectorProfileProperties

    .PARAMETER Marketo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-marketo
        UpdateType: Mutable
        Type: MarketoConnectorProfileProperties

    .PARAMETER Redshift
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-redshift
        UpdateType: Mutable
        Type: RedshiftConnectorProfileProperties

    .PARAMETER Slack
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-slack
        UpdateType: Mutable
        Type: SlackConnectorProfileProperties

    .PARAMETER Snowflake
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-snowflake
        UpdateType: Mutable
        Type: SnowflakeConnectorProfileProperties

    .PARAMETER Dynatrace
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-dynatrace
        UpdateType: Mutable
        Type: DynatraceConnectorProfileProperties

    .PARAMETER Zendesk
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-zendesk
        UpdateType: Mutable
        Type: ZendeskConnectorProfileProperties

    .PARAMETER InforNexus
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-infornexus
        UpdateType: Mutable
        Type: InforNexusConnectorProfileProperties

    .PARAMETER Salesforce
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-salesforce
        UpdateType: Mutable
        Type: SalesforceConnectorProfileProperties

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileProperties')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ServiceNow,

        [Parameter(Mandatory = $false)]
        $CustomConnector,

        [Parameter(Mandatory = $false)]
        $SAPOData,

        [Parameter(Mandatory = $false)]
        $Pardot,

        [Parameter(Mandatory = $false)]
        $Veeva,

        [Parameter(Mandatory = $false)]
        $Datadog,

        [Parameter(Mandatory = $false)]
        $Marketo,

        [Parameter(Mandatory = $false)]
        $Redshift,

        [Parameter(Mandatory = $false)]
        $Slack,

        [Parameter(Mandatory = $false)]
        $Snowflake,

        [Parameter(Mandatory = $false)]
        $Dynatrace,

        [Parameter(Mandatory = $false)]
        $Zendesk,

        [Parameter(Mandatory = $false)]
        $InforNexus,

        [Parameter(Mandatory = $false)]
        $Salesforce

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
