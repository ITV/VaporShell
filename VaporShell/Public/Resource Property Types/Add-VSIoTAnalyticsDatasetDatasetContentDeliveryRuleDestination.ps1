function Add-VSIoTAnalyticsDatasetDatasetContentDeliveryRuleDestination {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html

    .PARAMETER IotEventsDestinationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-ioteventsdestinationconfiguration
        UpdateType: Mutable
        Type: IotEventsDestinationConfiguration

    .PARAMETER S3DestinationConfiguration
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
        [Parameter(Mandatory = $false)]
        $IotEventsDestinationConfiguration,

        [Parameter(Mandatory = $false)]
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
