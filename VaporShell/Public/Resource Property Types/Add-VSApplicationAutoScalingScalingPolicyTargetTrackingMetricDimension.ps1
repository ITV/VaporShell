function Add-VSApplicationAutoScalingScalingPolicyTargetTrackingMetricDimension {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingMetricDimension resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingMetricDimension resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingmetricdimension.html

    .PARAMETER Value
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingmetricdimension.html#cfn-applicationautoscaling-scalingpolicy-targettrackingmetricdimension-value
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingmetricdimension.html#cfn-applicationautoscaling-scalingpolicy-targettrackingmetricdimension-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricDimension')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Value,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricDimension'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
