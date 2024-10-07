function Add-VSQuickSightDashboardMetricComparisonComputation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.MetricComparisonComputation resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.MetricComparisonComputation resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-metriccomparisoncomputation.html

    .PARAMETER TargetValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-metriccomparisoncomputation.html#cfn-quicksight-dashboard-metriccomparisoncomputation-targetvalue
        UpdateType: Mutable
        Type: MeasureField

    .PARAMETER Time
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-metriccomparisoncomputation.html#cfn-quicksight-dashboard-metriccomparisoncomputation-time
        UpdateType: Mutable
        Type: DimensionField

    .PARAMETER ComputationId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-metriccomparisoncomputation.html#cfn-quicksight-dashboard-metriccomparisoncomputation-computationid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER FromValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-metriccomparisoncomputation.html#cfn-quicksight-dashboard-metriccomparisoncomputation-fromvalue
        UpdateType: Mutable
        Type: MeasureField

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-metriccomparisoncomputation.html#cfn-quicksight-dashboard-metriccomparisoncomputation-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.MetricComparisonComputation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $TargetValue,
        [parameter(Mandatory = $true)]
        $Time,
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
        $ComputationId,
        [parameter(Mandatory = $true)]
        $FromValue,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.MetricComparisonComputation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
