function Add-VSApplicationAutoScalingScalingPolicyStepAdjustment {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.StepAdjustment resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.StepAdjustment resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepadjustment.html

    .PARAMETER MetricIntervalUpperBound
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepadjustment-metricintervalupperbound
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER MetricIntervalLowerBound
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepadjustment-metricintervallowerbound
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER ScalingAdjustment
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepadjustment-scalingadjustment
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.StepAdjustment')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MetricIntervalUpperBound,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MetricIntervalLowerBound,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ScalingAdjustment

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.StepAdjustment'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
