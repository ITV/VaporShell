function Add-VSAppFlowConnectorProfileConnectorProfileProperties {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileProperties resource property to the template. The ConnectorProfileProperties property type specifies the connector-specific profile properties required by each connector.

    .DESCRIPTION
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileProperties resource property to the template.
The ConnectorProfileProperties property type specifies the connector-specific profile properties required by each connector.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html

    .PARAMETER Datadog
        The connector-specific properties required by Datadog.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-datadog
        UpdateType: Mutable
        Type: DatadogConnectorProfileProperties

    .PARAMETER Dynatrace
        The connector-specific properties required by Dynatrace.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-dynatrace
        UpdateType: Mutable
        Type: DynatraceConnectorProfileProperties

    .PARAMETER InforNexus
        The connector-specific properties required by Infor Nexus.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-infornexus
        UpdateType: Mutable
        Type: InforNexusConnectorProfileProperties

    .PARAMETER Marketo
        The connector-specific properties required by Marketo.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-marketo
        UpdateType: Mutable
        Type: MarketoConnectorProfileProperties

    .PARAMETER Redshift
        The connector-specific properties required by Amazon Redshift.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-redshift
        UpdateType: Mutable
        Type: RedshiftConnectorProfileProperties

    .PARAMETER SAPOData
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-sapodata
        UpdateType: Mutable
        Type: SAPODataConnectorProfileProperties

    .PARAMETER Salesforce
        The connector-specific properties required by Salesforce.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-salesforce
        UpdateType: Mutable
        Type: SalesforceConnectorProfileProperties

    .PARAMETER ServiceNow
        The connector-specific properties required by serviceNow.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-servicenow
        UpdateType: Mutable
        Type: ServiceNowConnectorProfileProperties

    .PARAMETER Slack
        The connector-specific properties required by Slack.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-slack
        UpdateType: Mutable
        Type: SlackConnectorProfileProperties

    .PARAMETER Snowflake
        The connector-specific properties required by Snowflake.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-snowflake
        UpdateType: Mutable
        Type: SnowflakeConnectorProfileProperties

    .PARAMETER Veeva
        The connector-specific properties required by Veeva.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-veeva
        UpdateType: Mutable
        Type: VeevaConnectorProfileProperties

    .PARAMETER Zendesk
        The connector-specific properties required by Zendesk.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-zendesk
        UpdateType: Mutable
        Type: ZendeskConnectorProfileProperties

    .PARAMETER CustomConnector
        + ConnectorProfileProperties: https://docs.aws.amazon.com/appflow/1.0/APIReference/API_ConnectorProfileProperties.html in the *Amazon AppFlow API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofileproperties.html#cfn-appflow-connectorprofile-connectorprofileproperties-customconnector
        UpdateType: Mutable
        Type: CustomConnectorProfileProperties

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileProperties')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Datadog,
        [parameter(Mandatory = $false)]
        $Dynatrace,
        [parameter(Mandatory = $false)]
        $InforNexus,
        [parameter(Mandatory = $false)]
        $Marketo,
        [parameter(Mandatory = $false)]
        $Redshift,
        [parameter(Mandatory = $false)]
        $SAPOData,
        [parameter(Mandatory = $false)]
        $Salesforce,
        [parameter(Mandatory = $false)]
        $ServiceNow,
        [parameter(Mandatory = $false)]
        $Slack,
        [parameter(Mandatory = $false)]
        $Snowflake,
        [parameter(Mandatory = $false)]
        $Veeva,
        [parameter(Mandatory = $false)]
        $Zendesk,
        [parameter(Mandatory = $false)]
        $CustomConnector
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
