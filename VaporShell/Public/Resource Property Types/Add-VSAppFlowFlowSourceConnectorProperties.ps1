function Add-VSAppFlowFlowSourceConnectorProperties {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::Flow.SourceConnectorProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppFlow::Flow.SourceConnectorProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html

    .PARAMETER Amplitude
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-amplitude
        UpdateType: Mutable
        Type: AmplitudeSourceProperties

    .PARAMETER S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-s3
        UpdateType: Mutable
        Type: S3SourceProperties

    .PARAMETER GoogleAnalytics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-googleanalytics
        UpdateType: Mutable
        Type: GoogleAnalyticsSourceProperties

    .PARAMETER ServiceNow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-servicenow
        UpdateType: Mutable
        Type: ServiceNowSourceProperties

    .PARAMETER CustomConnector
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-customconnector
        UpdateType: Mutable
        Type: CustomConnectorSourceProperties

    .PARAMETER SAPOData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-sapodata
        UpdateType: Mutable
        Type: SAPODataSourceProperties

    .PARAMETER Pardot
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-pardot
        UpdateType: Mutable
        Type: PardotSourceProperties

    .PARAMETER Veeva
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-veeva
        UpdateType: Mutable
        Type: VeevaSourceProperties

    .PARAMETER Trendmicro
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-trendmicro
        UpdateType: Mutable
        Type: TrendmicroSourceProperties

    .PARAMETER Datadog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-datadog
        UpdateType: Mutable
        Type: DatadogSourceProperties

    .PARAMETER Marketo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-marketo
        UpdateType: Mutable
        Type: MarketoSourceProperties

    .PARAMETER Singular
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-singular
        UpdateType: Mutable
        Type: SingularSourceProperties

    .PARAMETER Slack
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-slack
        UpdateType: Mutable
        Type: SlackSourceProperties

    .PARAMETER Dynatrace
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-dynatrace
        UpdateType: Mutable
        Type: DynatraceSourceProperties

    .PARAMETER Zendesk
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-zendesk
        UpdateType: Mutable
        Type: ZendeskSourceProperties

    .PARAMETER InforNexus
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-infornexus
        UpdateType: Mutable
        Type: InforNexusSourceProperties

    .PARAMETER Salesforce
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sourceconnectorproperties.html#cfn-appflow-flow-sourceconnectorproperties-salesforce
        UpdateType: Mutable
        Type: SalesforceSourceProperties

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppFlow.Flow.SourceConnectorProperties')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Amplitude,

        [Parameter(Mandatory = $false)]
        $S3,

        [Parameter(Mandatory = $false)]
        $GoogleAnalytics,

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
        $Trendmicro,

        [Parameter(Mandatory = $false)]
        $Datadog,

        [Parameter(Mandatory = $false)]
        $Marketo,

        [Parameter(Mandatory = $false)]
        $Singular,

        [Parameter(Mandatory = $false)]
        $Slack,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.Flow.SourceConnectorProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
