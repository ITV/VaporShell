function Add-VSAppFlowConnectorProfileConnectorProfileCredentials {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileCredentials resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppFlow::ConnectorProfile.ConnectorProfileCredentials resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html

    .PARAMETER Amplitude
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-amplitude
        UpdateType: Mutable
        Type: AmplitudeConnectorProfileCredentials

    .PARAMETER GoogleAnalytics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-googleanalytics
        UpdateType: Mutable
        Type: GoogleAnalyticsConnectorProfileCredentials

    .PARAMETER ServiceNow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-servicenow
        UpdateType: Mutable
        Type: ServiceNowConnectorProfileCredentials

    .PARAMETER CustomConnector
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-customconnector
        UpdateType: Mutable
        Type: CustomConnectorProfileCredentials

    .PARAMETER SAPOData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-sapodata
        UpdateType: Mutable
        Type: SAPODataConnectorProfileCredentials

    .PARAMETER Pardot
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-pardot
        UpdateType: Mutable
        Type: PardotConnectorProfileCredentials

    .PARAMETER Veeva
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-veeva
        UpdateType: Mutable
        Type: VeevaConnectorProfileCredentials

    .PARAMETER Trendmicro
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-trendmicro
        UpdateType: Mutable
        Type: TrendmicroConnectorProfileCredentials

    .PARAMETER Datadog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-datadog
        UpdateType: Mutable
        Type: DatadogConnectorProfileCredentials

    .PARAMETER Marketo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-marketo
        UpdateType: Mutable
        Type: MarketoConnectorProfileCredentials

    .PARAMETER Redshift
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-redshift
        UpdateType: Mutable
        Type: RedshiftConnectorProfileCredentials

    .PARAMETER Singular
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-singular
        UpdateType: Mutable
        Type: SingularConnectorProfileCredentials

    .PARAMETER Slack
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-slack
        UpdateType: Mutable
        Type: SlackConnectorProfileCredentials

    .PARAMETER Snowflake
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-snowflake
        UpdateType: Mutable
        Type: SnowflakeConnectorProfileCredentials

    .PARAMETER Dynatrace
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-dynatrace
        UpdateType: Mutable
        Type: DynatraceConnectorProfileCredentials

    .PARAMETER Zendesk
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-zendesk
        UpdateType: Mutable
        Type: ZendeskConnectorProfileCredentials

    .PARAMETER InforNexus
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-infornexus
        UpdateType: Mutable
        Type: InforNexusConnectorProfileCredentials

    .PARAMETER Salesforce
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-salesforce
        UpdateType: Mutable
        Type: SalesforceConnectorProfileCredentials

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileCredentials')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Amplitude,

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
        $Redshift,

        [Parameter(Mandatory = $false)]
        $Singular,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.ConnectorProfile.ConnectorProfileCredentials'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
