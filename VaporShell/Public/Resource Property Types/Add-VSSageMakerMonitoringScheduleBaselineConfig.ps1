function Add-VSSageMakerMonitoringScheduleBaselineConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::MonitoringSchedule.BaselineConfig resource property to the template. Baseline configuration used to validate that the data conforms to the specified constraints and statistics.

    .DESCRIPTION
        Adds an AWS::SageMaker::MonitoringSchedule.BaselineConfig resource property to the template.
Baseline configuration used to validate that the data conforms to the specified constraints and statistics.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-baselineconfig.html

    .PARAMETER ConstraintsResource
        The Amazon S3 URI for the constraints resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-baselineconfig.html#cfn-sagemaker-monitoringschedule-baselineconfig-constraintsresource
        UpdateType: Mutable
        Type: ConstraintsResource

    .PARAMETER StatisticsResource
        The baseline statistics file in Amazon S3 that the current monitoring job should be validated against.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-baselineconfig.html#cfn-sagemaker-monitoringschedule-baselineconfig-statisticsresource
        UpdateType: Mutable
        Type: StatisticsResource

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.MonitoringSchedule.BaselineConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ConstraintsResource,
        [parameter(Mandatory = $false)]
        $StatisticsResource
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.MonitoringSchedule.BaselineConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
