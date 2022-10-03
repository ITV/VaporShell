function Add-VSLookoutMetricsAnomalyDetectorS3SourceConfig {
    <#
    .SYNOPSIS
        Adds an AWS::LookoutMetrics::AnomalyDetector.S3SourceConfig resource property to the template. Contains information about the configuration of the S3 bucket that contains source files.

    .DESCRIPTION
        Adds an AWS::LookoutMetrics::AnomalyDetector.S3SourceConfig resource property to the template.
Contains information about the configuration of the S3 bucket that contains source files.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html

    .PARAMETER RoleArn
        The ARN of an IAM role that has read and write access permissions to the source S3 bucket.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-rolearn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TemplatedPathList
        A list of templated paths to the source files.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-templatedpathlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER HistoricalDataPathList
        A list of paths to the historical data files.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-historicaldatapathlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER FileFormatDescriptor
        Contains information about a source file's formatting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-fileformatdescriptor
        UpdateType: Mutable
        Type: FileFormatDescriptor

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LookoutMetrics.AnomalyDetector.S3SourceConfig')]
    [cmdletbinding()]
    Param
    (
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
        $RoleArn,
        [parameter(Mandatory = $false)]
        $TemplatedPathList,
        [parameter(Mandatory = $false)]
        $HistoricalDataPathList,
        [parameter(Mandatory = $true)]
        $FileFormatDescriptor
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LookoutMetrics.AnomalyDetector.S3SourceConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
