function Add-VSInternetMonitorMonitorInternetMeasurementsLogDelivery {
    <#
    .SYNOPSIS
        Adds an AWS::InternetMonitor::Monitor.InternetMeasurementsLogDelivery resource property to the template. 

    .DESCRIPTION
        Adds an AWS::InternetMonitor::Monitor.InternetMeasurementsLogDelivery resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-internetmeasurementslogdelivery.html

    .PARAMETER S3Config
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-internetmeasurementslogdelivery.html#cfn-internetmonitor-monitor-internetmeasurementslogdelivery-s3config
        UpdateType: Mutable
        Type: S3Config

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.InternetMonitor.Monitor.InternetMeasurementsLogDelivery')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3Config
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InternetMonitor.Monitor.InternetMeasurementsLogDelivery'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
