function Add-VSIoTSiteWiseAssetModelMetricWindow {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AssetModel.MetricWindow resource property to the template. Contains a time interval window used for data aggregate computations (for example, average, sum, count, and so on.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AssetModel.MetricWindow resource property to the template.
Contains a time interval window used for data aggregate computations (for example, average, sum, count, and so on.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metricwindow.html

    .PARAMETER Tumbling
        The tumbling time interval window.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metricwindow.html#cfn-iotsitewise-assetmodel-metricwindow-tumbling
        UpdateType: Mutable
        Type: TumblingWindow

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.AssetModel.MetricWindow')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Tumbling
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.AssetModel.MetricWindow'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
