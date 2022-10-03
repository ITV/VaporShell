function Add-VSAutoScalingScalingPolicyPredictiveScalingMetricSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::ScalingPolicy.PredictiveScalingMetricSpecification resource property to the template. A structure that specifies a metric specification for the MetricSpecifications property of the AWS::AutoScaling::ScalingPolicy PredictiveScalingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingconfiguration.html property type.

    .DESCRIPTION
        Adds an AWS::AutoScaling::ScalingPolicy.PredictiveScalingMetricSpecification resource property to the template.
A structure that specifies a metric specification for the MetricSpecifications property of the AWS::AutoScaling::ScalingPolicy PredictiveScalingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingconfiguration.html property type.

For more information, see Predictive scaling: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html in the *Amazon EC2 Auto Scaling User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html

    .PARAMETER CustomizedCapacityMetricSpecification
        The customized capacity metric specification.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html#cfn-autoscaling-scalingpolicy-predictivescalingmetricspecification-customizedcapacitymetricspecification
        UpdateType: Mutable
        Type: PredictiveScalingCustomizedCapacityMetric

    .PARAMETER CustomizedLoadMetricSpecification
        The customized load metric specification.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html#cfn-autoscaling-scalingpolicy-predictivescalingmetricspecification-customizedloadmetricspecification
        UpdateType: Mutable
        Type: PredictiveScalingCustomizedLoadMetric

    .PARAMETER CustomizedScalingMetricSpecification
        The customized scaling metric specification.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html#cfn-autoscaling-scalingpolicy-predictivescalingmetricspecification-customizedscalingmetricspecification
        UpdateType: Mutable
        Type: PredictiveScalingCustomizedScalingMetric

    .PARAMETER PredefinedLoadMetricSpecification
        The load metric specification.
If you specify PredefinedMetricPairSpecification, don't specify this property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html#cfn-autoscaling-scalingpolicy-predictivescalingmetricspecification-predefinedloadmetricspecification
        UpdateType: Mutable
        Type: PredictiveScalingPredefinedLoadMetric

    .PARAMETER TargetValue
        Specifies the target utilization.
Some metrics are based on a count instead of a percentage, such as the request count for an Application Load Balancer or the number of messages in an SQS queue. If the scaling policy specifies one of these metrics, specify the target utilization as the optimal average request or message count per instance during any one-minute interval.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html#cfn-autoscaling-scalingpolicy-predictivescalingmetricspecification-targetvalue
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER PredefinedScalingMetricSpecification
        The scaling metric specification.
If you specify PredefinedMetricPairSpecification, don't specify this property.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html#cfn-autoscaling-scalingpolicy-predictivescalingmetricspecification-predefinedscalingmetricspecification
        UpdateType: Mutable
        Type: PredictiveScalingPredefinedScalingMetric

    .PARAMETER PredefinedMetricPairSpecification
        The metric pair specification from which Amazon EC2 Auto Scaling determines the appropriate scaling metric and load metric to use.
With predictive scaling, you must specify either a metric pair, or a load metric and a scaling metric individually. Specifying a metric pair instead of individual metrics provides a simpler way to configure metrics for a scaling policy. You choose the metric pair, and the policy automatically knows the correct sum and average statistics to use for the load metric and the scaling metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingmetricspecification.html#cfn-autoscaling-scalingpolicy-predictivescalingmetricspecification-predefinedmetricpairspecification
        UpdateType: Mutable
        Type: PredictiveScalingPredefinedMetricPair

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.ScalingPolicy.PredictiveScalingMetricSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomizedCapacityMetricSpecification,
        [parameter(Mandatory = $false)]
        $CustomizedLoadMetricSpecification,
        [parameter(Mandatory = $false)]
        $CustomizedScalingMetricSpecification,
        [parameter(Mandatory = $false)]
        $PredefinedLoadMetricSpecification,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TargetValue,
        [parameter(Mandatory = $false)]
        $PredefinedScalingMetricSpecification,
        [parameter(Mandatory = $false)]
        $PredefinedMetricPairSpecification
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.ScalingPolicy.PredictiveScalingMetricSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
