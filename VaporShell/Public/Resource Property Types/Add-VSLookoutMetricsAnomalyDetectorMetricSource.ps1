function Add-VSLookoutMetricsAnomalyDetectorMetricSource {
    <#
    .SYNOPSIS
        Adds an AWS::LookoutMetrics::AnomalyDetector.MetricSource resource property to the template. Contains information about how the source data should be interpreted.

    .DESCRIPTION
        Adds an AWS::LookoutMetrics::AnomalyDetector.MetricSource resource property to the template.
Contains information about how the source data should be interpreted.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html

    .PARAMETER S3SourceConfig
        Contains information about the configuration of the S3 bucket that contains source files.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-s3sourceconfig
        UpdateType: Mutable
        Type: S3SourceConfig

    .PARAMETER RDSSourceConfig
        An object containing information about the Amazon Relational Database Service RDS configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-rdssourceconfig
        UpdateType: Mutable
        Type: RDSSourceConfig

    .PARAMETER RedshiftSourceConfig
        An object containing information about the Amazon Redshift database configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-redshiftsourceconfig
        UpdateType: Mutable
        Type: RedshiftSourceConfig

    .PARAMETER CloudwatchConfig
        An object containing information about the Amazon CloudWatch monitoring configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-cloudwatchconfig
        UpdateType: Mutable
        Type: CloudwatchConfig

    .PARAMETER AppFlowConfig
        An object containing information about the AppFlow configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-appflowconfig
        UpdateType: Mutable
        Type: AppFlowConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LookoutMetrics.AnomalyDetector.MetricSource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3SourceConfig,
        [parameter(Mandatory = $false)]
        $RDSSourceConfig,
        [parameter(Mandatory = $false)]
        $RedshiftSourceConfig,
        [parameter(Mandatory = $false)]
        $CloudwatchConfig,
        [parameter(Mandatory = $false)]
        $AppFlowConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LookoutMetrics.AnomalyDetector.MetricSource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
