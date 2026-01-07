function Add-VSAutoScalingAutoScalingGroupInstanceLifecyclePolicy {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.InstanceLifecyclePolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.InstanceLifecyclePolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancelifecyclepolicy.html

    .PARAMETER RetentionTriggers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancelifecyclepolicy.html#cfn-autoscaling-autoscalinggroup-instancelifecyclepolicy-retentiontriggers
        UpdateType: Mutable
        Type: RetentionTriggers

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.InstanceLifecyclePolicy')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RetentionTriggers

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.InstanceLifecyclePolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
