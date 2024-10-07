function Add-VSLookoutMetricsAnomalyDetectorMetricSource {
    <#
    .SYNOPSIS
        Adds an AWS::LookoutMetrics::AnomalyDetector.MetricSource resource property to the template. 

    .DESCRIPTION
        Adds an AWS::LookoutMetrics::AnomalyDetector.MetricSource resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html

    .PARAMETER S3SourceConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-s3sourceconfig
        UpdateType: Mutable
        Type: S3SourceConfig

    .PARAMETER CloudwatchConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-cloudwatchconfig
        UpdateType: Mutable
        Type: CloudwatchConfig

    .PARAMETER RDSSourceConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-rdssourceconfig
        UpdateType: Mutable
        Type: RDSSourceConfig

    .PARAMETER AppFlowConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-appflowconfig
        UpdateType: Mutable
        Type: AppFlowConfig

    .PARAMETER RedshiftSourceConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metricsource.html#cfn-lookoutmetrics-anomalydetector-metricsource-redshiftsourceconfig
        UpdateType: Mutable
        Type: RedshiftSourceConfig

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
        $CloudwatchConfig,
        [parameter(Mandatory = $false)]
        $RDSSourceConfig,
        [parameter(Mandatory = $false)]
        $AppFlowConfig,
        [parameter(Mandatory = $false)]
        $RedshiftSourceConfig
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
