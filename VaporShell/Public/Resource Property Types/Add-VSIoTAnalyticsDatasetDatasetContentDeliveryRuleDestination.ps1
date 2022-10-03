function Add-VSIoTAnalyticsDatasetDatasetContentDeliveryRuleDestination {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination resource property to the template. The destination to which dataset contents are delivered.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination resource property to the template.
The destination to which dataset contents are delivered.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html

    .PARAMETER IotEventsDestinationConfiguration
        Configuration information for delivery of dataset contents to AWS IoT Events.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-ioteventsdestinationconfiguration
        UpdateType: Mutable
        Type: IotEventsDestinationConfiguration

    .PARAMETER S3DestinationConfiguration
        Configuration information for delivery of dataset contents to Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-s3destinationconfiguration
        UpdateType: Mutable
        Type: S3DestinationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Dataset.DatasetContentDeliveryRuleDestination')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $IotEventsDestinationConfiguration,
        [parameter(Mandatory = $false)]
        $S3DestinationConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Dataset.DatasetContentDeliveryRuleDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
