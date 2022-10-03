function Add-VSAppFlowFlowDestinationConnectorProperties {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::Flow.DestinationConnectorProperties resource property to the template. This stores the information that is required to query a particular connector.

    .DESCRIPTION
        Adds an AWS::AppFlow::Flow.DestinationConnectorProperties resource property to the template.
This stores the information that is required to query a particular connector.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html

    .PARAMETER Redshift
        The properties required to query Amazon Redshift.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-redshift
        UpdateType: Mutable
        Type: RedshiftDestinationProperties

    .PARAMETER S3
        The properties required to query Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-s3
        UpdateType: Mutable
        Type: S3DestinationProperties

    .PARAMETER Salesforce
        The properties required to query Salesforce.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-salesforce
        UpdateType: Mutable
        Type: SalesforceDestinationProperties

    .PARAMETER Snowflake
        The properties required to query Snowflake.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-snowflake
        UpdateType: Mutable
        Type: SnowflakeDestinationProperties

    .PARAMETER EventBridge
        The properties required to query Amazon EventBridge.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-eventbridge
        UpdateType: Mutable
        Type: EventBridgeDestinationProperties

    .PARAMETER Upsolver
        The properties required to query Upsolver.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-upsolver
        UpdateType: Mutable
        Type: UpsolverDestinationProperties

    .PARAMETER LookoutMetrics
        The properties required to query Amazon Lookout for Metrics.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-lookoutmetrics
        UpdateType: Mutable
        Type: LookoutMetricsDestinationProperties

    .PARAMETER Marketo
        The properties required to query Marketo.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-marketo
        UpdateType: Mutable
        Type: MarketoDestinationProperties

    .PARAMETER Zendesk
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-zendesk
        UpdateType: Mutable
        Type: ZendeskDestinationProperties

    .PARAMETER CustomConnector
        + DestinationConnectorProperties: https://docs.aws.amazon.com/appflow/1.0/APIReference/API_DestinationConnectorProperties.html in the *Amazon AppFlow API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-customconnector
        UpdateType: Mutable
        Type: CustomConnectorDestinationProperties

    .PARAMETER SAPOData
        The properties required to query SAPOData.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-sapodata
        UpdateType: Mutable
        Type: SAPODataDestinationProperties

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppFlow.Flow.DestinationConnectorProperties')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Redshift,
        [parameter(Mandatory = $false)]
        $S3,
        [parameter(Mandatory = $false)]
        $Salesforce,
        [parameter(Mandatory = $false)]
        $Snowflake,
        [parameter(Mandatory = $false)]
        $EventBridge,
        [parameter(Mandatory = $false)]
        $Upsolver,
        [parameter(Mandatory = $false)]
        $LookoutMetrics,
        [parameter(Mandatory = $false)]
        $Marketo,
        [parameter(Mandatory = $false)]
        $Zendesk,
        [parameter(Mandatory = $false)]
        $CustomConnector,
        [parameter(Mandatory = $false)]
        $SAPOData
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.Flow.DestinationConnectorProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
