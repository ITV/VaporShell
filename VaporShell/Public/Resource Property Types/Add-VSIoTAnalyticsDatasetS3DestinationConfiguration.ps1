function Add-VSIoTAnalyticsDatasetS3DestinationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Dataset.S3DestinationConfiguration resource property to the template. Configuration information for delivery of dataset contents to Amazon Simple Storage Service (Amazon S3.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Dataset.S3DestinationConfiguration resource property to the template.
Configuration information for delivery of dataset contents to Amazon Simple Storage Service (Amazon S3.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html

    .PARAMETER GlueConfiguration
        Configuration information for coordination with AWS Glue, a fully managed extract, transform and load ETL service.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-glueconfiguration
        UpdateType: Mutable
        Type: GlueConfiguration

    .PARAMETER Bucket
        The name of the S3 bucket to which dataset contents are delivered.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-bucket
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Key
        The key of the dataset contents object in an S3 bucket. Each object has a key that is a unique identifier. Each object has exactly one key.
You can create a unique key with the following options:
+ Use !{iotanalytics:scheduleTime} to insert the time of a scheduled SQL query run.
+ Use !{iotanalytics:versionId} to insert a unique hash that identifies a dataset content.
+ Use !{iotanalytics:creationTime} to insert the creation time of a dataset content.
The following example creates a unique key for a CSV file: dataset/mydataset/!{iotanalytics:scheduleTime}/!{iotanalytics:versionId}.csv
If you don't use !{iotanalytics:versionId} to specify the key, you might get duplicate keys. For example, you might have two dataset contents with the same scheduleTime but different versionIds. This means that one dataset content overwrites the other.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-key
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RoleArn
        The ARN of the role that grants AWS IoT Analytics permission to interact with your Amazon S3 and AWS Glue resources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-rolearn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Dataset.S3DestinationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $GlueConfiguration,
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
        $Bucket,
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
        $Key,
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
        $RoleArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Dataset.S3DestinationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
