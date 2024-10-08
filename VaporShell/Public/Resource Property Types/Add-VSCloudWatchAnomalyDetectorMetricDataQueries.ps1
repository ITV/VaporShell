function Add-VSCloudWatchAnomalyDetectorMetricDataQueries {
    <#
    .SYNOPSIS
        Adds an AWS::CloudWatch::AnomalyDetector.MetricDataQueries resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudWatch::AnomalyDetector.MetricDataQueries resource property to the template.

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
