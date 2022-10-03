function Add-VSAppFlowConnectorProfileConnectorProfileCredentials {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileCredentials resource property to the template. The ConnectorProfileCredentials property type specifies the connector-specific credentials required by a given connector.

    .DESCRIPTION
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileCredentials resource property to the template.
The ConnectorProfileCredentials property type specifies the connector-specific credentials required by a given connector.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html

    .PARAMETER Amplitude
        The connector-specific credentials required when using Amplitude.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-amplitude
        UpdateType: Mutable
        Type: AmplitudeConnectorProfileCredentials

    .PARAMETER Datadog
        The connector-specific credentials required when using Datadog.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-datadog
        UpdateType: Mutable
        Type: DatadogConnectorProfileCredentials

    .PARAMETER Dynatrace
        The connector-specific credentials required when using Dynatrace.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-dynatrace
        UpdateType: Mutable
        Type: DynatraceConnectorProfileCredentials

    .PARAMETER GoogleAnalytics
        The connector-specific credentials required when using Google Analytics.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-googleanalytics
        UpdateType: Mutable
        Type: GoogleAnalyticsConnectorProfileCredentials

    .PARAMETER InforNexus
        The connector-specific credentials required when using Infor Nexus.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-infornexus
        UpdateType: Mutable
        Type: InforNexusConnectorProfileCredentials

    .PARAMETER Marketo
        The connector-specific credentials required when using Marketo.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-marketo
        UpdateType: Mutable
        Type: MarketoConnectorProfileCredentials

    .PARAMETER Redshift
        The connector-specific credentials required when using Amazon Redshift.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-redshift
        UpdateType: Mutable
        Type: RedshiftConnectorProfileCredentials

    .PARAMETER SAPOData
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-sapodata
        UpdateType: Mutable
        Type: SAPODataConnectorProfileCredentials

    .PARAMETER Salesforce
        The connector-specific credentials required when using Salesforce.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-salesforce
        UpdateType: Mutable
        Type: SalesforceConnectorProfileCredentials

    .PARAMETER ServiceNow
        The connector-specific credentials required when using ServiceNow.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-servicenow
        UpdateType: Mutable
        Type: ServiceNowConnectorProfileCredentials

    .PARAMETER Singular
        The connector-specific credentials required when using Singular.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-singular
        UpdateType: Mutable
        Type: SingularConnectorProfileCredentials

    .PARAMETER Slack
        The connector-specific credentials required when using Slack.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-slack
        UpdateType: Mutable
        Type: SlackConnectorProfileCredentials

    .PARAMETER Snowflake
        The connector-specific credentials required when using Snowflake.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-snowflake
        UpdateType: Mutable
        Type: SnowflakeConnectorProfileCredentials

    .PARAMETER Trendmicro
        The connector-specific credentials required when using Trend Micro.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-trendmicro
        UpdateType: Mutable
        Type: TrendmicroConnectorProfileCredentials

    .PARAMETER Veeva
        The connector-specific credentials required when using Veeva.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-veeva
        UpdateType: Mutable
        Type: VeevaConnectorProfileCredentials

    .PARAMETER Zendesk
        The connector-specific credentials required when using Zendesk.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-zendesk
        UpdateType: Mutable
        Type: ZendeskConnectorProfileCredentials

    .PARAMETER CustomConnector
        + ConnectorProfileCredentials: https://docs.aws.amazon.com/appflow/1.0/APIReference/API_ConnectorProfileCredentials.html in the *Amazon AppFlow API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-customconnector
        UpdateType: Mutable
        Type: CustomConnectorProfileCredentials

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileCredentials')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Amplitude,
        [parameter(Mandatory = $false)]
        $Datadog,
        [parameter(Mandatory = $false)]
        $Dynatrace,
        [parameter(Mandatory = $false)]
        $GoogleAnalytics,
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
        $Singular,
        [parameter(Mandatory = $false)]
        $Slack,
        [parameter(Mandatory = $false)]
        $Snowflake,
        [parameter(Mandatory = $false)]
        $Trendmicro,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileCredentials'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
