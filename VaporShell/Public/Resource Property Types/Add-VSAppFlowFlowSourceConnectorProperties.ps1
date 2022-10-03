function Add-VSAppFlowFlowSourceConnectorProperties {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::Flow.SourceConnectorProperties resource property to the template. Specifies the information that is required to query a particular connector.

    .DESCRIPTION
        Adds an AWS::AppFlow::Flow.SourceConnectorProperties resource property to the template.
Specifies the information that is required to query a particular connector.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html

    .PARAMETER Amplitude
        Specifies the information that is required for querying Amplitude.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-amplitude
        UpdateType: Mutable
        Type: AmplitudeSourceProperties

    .PARAMETER Datadog
        Specifies the information that is required for querying Datadog.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-datadog
        UpdateType: Mutable
        Type: DatadogSourceProperties

    .PARAMETER Dynatrace
        Specifies the information that is required for querying Dynatrace.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-dynatrace
        UpdateType: Mutable
        Type: DynatraceSourceProperties

    .PARAMETER GoogleAnalytics
        Specifies the information that is required for querying Google Analytics.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-googleanalytics
        UpdateType: Mutable
        Type: GoogleAnalyticsSourceProperties

    .PARAMETER InforNexus
        Specifies the information that is required for querying Infor Nexus.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-infornexus
        UpdateType: Mutable
        Type: InforNexusSourceProperties

    .PARAMETER Marketo
        Specifies the information that is required for querying Marketo.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-marketo
        UpdateType: Mutable
        Type: MarketoSourceProperties

    .PARAMETER S3
        Specifies the information that is required for querying Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-s3
        UpdateType: Mutable
        Type: S3SourceProperties

    .PARAMETER SAPOData
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-sapodata
        UpdateType: Mutable
        Type: SAPODataSourceProperties

    .PARAMETER Salesforce
        Specifies the information that is required for querying Salesforce.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-salesforce
        UpdateType: Mutable
        Type: SalesforceSourceProperties

    .PARAMETER ServiceNow
        Specifies the information that is required for querying ServiceNow.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-servicenow
        UpdateType: Mutable
        Type: ServiceNowSourceProperties

    .PARAMETER Singular
        Specifies the information that is required for querying Singular.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-singular
        UpdateType: Mutable
        Type: SingularSourceProperties

    .PARAMETER Slack
        Specifies the information that is required for querying Slack.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-slack
        UpdateType: Mutable
        Type: SlackSourceProperties

    .PARAMETER Trendmicro
        Specifies the information that is required for querying Trend Micro.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-trendmicro
        UpdateType: Mutable
        Type: TrendmicroSourceProperties

    .PARAMETER Veeva
        Specifies the information that is required for querying Veeva.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-veeva
        UpdateType: Mutable
        Type: VeevaSourceProperties

    .PARAMETER Zendesk
        Specifies the information that is required for querying Zendesk.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-zendesk
        UpdateType: Mutable
        Type: ZendeskSourceProperties

    .PARAMETER CustomConnector
        + SourceConnectorProperties: https://docs.aws.amazon.com/appflow/1.0/APIReference/API_SourceConnectorProperties.html in the *Amazon AppFlow API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-customconnector
        UpdateType: Mutable
        Type: CustomConnectorSourceProperties

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppFlow.Flow.SourceConnectorProperties')]
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
        $S3,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.Flow.SourceConnectorProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
