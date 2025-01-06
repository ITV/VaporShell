function Add-VSLambdaEventSourceMappingMetricsConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::EventSourceMapping.MetricsConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lambda::EventSourceMapping.MetricsConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-metricsconfig.html

    .PARAMETER Metrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-metricsconfig.html#cfn-lambda-eventsourcemapping-metricsconfig-metrics
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lambda.EventSourceMapping.MetricsConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Metrics

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.EventSourceMapping.MetricsConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
