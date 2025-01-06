function Add-VSAutoScalingAutoScalingGroupBaselinePerformanceFactorsRequest {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.BaselinePerformanceFactorsRequest resource property to the template.

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.BaselinePerformanceFactorsRequest resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-baselineperformancefactorsrequest.html

    .PARAMETER Cpu
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-baselineperformancefactorsrequest.html#cfn-autoscaling-autoscalinggroup-baselineperformancefactorsrequest-cpu
        UpdateType: Conditional
        Type: CpuPerformanceFactorRequest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.BaselinePerformanceFactorsRequest')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Cpu

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.BaselinePerformanceFactorsRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
