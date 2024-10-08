function Add-VSLookoutMetricsAnomalyDetectorFileFormatDescriptor {
    <#
    .SYNOPSIS
        Adds an AWS::LookoutMetrics::AnomalyDetector.FileFormatDescriptor resource property to the template.

    .DESCRIPTION
        Adds an AWS::LookoutMetrics::AnomalyDetector.FileFormatDescriptor resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-fileformatdescriptor.html

    .PARAMETER JsonFormatDescriptor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-fileformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-fileformatdescriptor-jsonformatdescriptor
        UpdateType: Mutable
        Type: JsonFormatDescriptor

    .PARAMETER CsvFormatDescriptor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-fileformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-fileformatdescriptor-csvformatdescriptor
        UpdateType: Mutable
        Type: CsvFormatDescriptor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.LookoutMetrics.AnomalyDetector.FileFormatDescriptor')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $JsonFormatDescriptor,

        [Parameter(Mandatory = $false)]
        $CsvFormatDescriptor

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LookoutMetrics.AnomalyDetector.FileFormatDescriptor'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
