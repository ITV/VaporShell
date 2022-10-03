function Add-VSCloudWatchAnomalyDetectorMetricDataQueries {
    <#
    .SYNOPSIS
        Adds an AWS::CloudWatch::AnomalyDetector.MetricDataQueries resource property to the template. An array of metric data query structures that enables you to create an anomaly detector based on the result of a metric math expression. Each item in MetricDataQueries gets a metric or performs a math expression. One item in MetricDataQueries is the expression that provides the time series that the anomaly detector uses as input. Designate the expression by setting ReturnData to True for this object in the array. For all other expressions and metrics, set ReturnData to False. The designated expression must return a single time series.

    .DESCRIPTION
        Adds an AWS::CloudWatch::AnomalyDetector.MetricDataQueries resource property to the template.
An array of metric data query structures that enables you to create an anomaly detector based on the result of a metric math expression. Each item in MetricDataQueries gets a metric or performs a math expression. One item in MetricDataQueries is the expression that provides the time series that the anomaly detector uses as input. Designate the expression by setting ReturnData to True for this object in the array. For all other expressions and metrics, set ReturnData to False. The designated expression must return a single time series.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metricdataqueries.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudWatch.AnomalyDetector.MetricDataQueries')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudWatch.AnomalyDetector.MetricDataQueries'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
