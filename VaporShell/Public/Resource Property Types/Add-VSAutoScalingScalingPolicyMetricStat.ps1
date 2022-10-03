function Add-VSAutoScalingScalingPolicyMetricStat {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::ScalingPolicy.MetricStat resource property to the template. MetricStat is a property of the AWS::AutoScaling::ScalingPolicy MetricDataQuery: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html property type.

    .DESCRIPTION
        Adds an AWS::AutoScaling::ScalingPolicy.MetricStat resource property to the template.
MetricStat is a property of the AWS::AutoScaling::ScalingPolicy MetricDataQuery: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdataquery.html property type.

This structure defines the CloudWatch metric to return, along with the statistic, period, and unit.

For more information about the CloudWatch terminology below, see Amazon CloudWatch concepts: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html in the *Amazon CloudWatch User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricstat.html

    .PARAMETER Metric
        The CloudWatch metric to return, including the metric name, namespace, and dimensions. To get the exact metric name, namespace, and dimensions, inspect the Metric: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html object that is returned by a call to ListMetrics: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricstat.html#cfn-autoscaling-scalingpolicy-metricstat-metric
        UpdateType: Mutable
        Type: Metric

    .PARAMETER Stat
        The statistic to return. It can include any CloudWatch statistic or extended statistic. For a list of valid values, see the table in Statistics: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic in the *Amazon CloudWatch User Guide*.
The most commonly used metrics for predictive scaling are Average and Sum.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricstat.html#cfn-autoscaling-scalingpolicy-metricstat-stat
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Unit
        The unit to use for the returned data points. For a complete list of the units that CloudWatch supports, see the MetricDatum: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html data type in the *Amazon CloudWatch API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricstat.html#cfn-autoscaling-scalingpolicy-metricstat-unit
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.ScalingPolicy.MetricStat')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Metric,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Stat,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Unit
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.ScalingPolicy.MetricStat'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
