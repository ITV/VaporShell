function Add-VSIoTAnalyticsDatastoreFileFormatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Datastore.FileFormatConfiguration resource property to the template. Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and Parquet: https://parquet.apache.org/.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Datastore.FileFormatConfiguration resource property to the template.
Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and Parquet: https://parquet.apache.org/.

The default file format is JSON. You can specify only one format.

You can't change the file format after you create the data store.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-fileformatconfiguration.html

    .PARAMETER JsonConfiguration
        Contains the configuration information of the JSON format.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-fileformatconfiguration.html#cfn-iotanalytics-datastore-fileformatconfiguration-jsonconfiguration
        UpdateType: Mutable
        Type: JsonConfiguration

    .PARAMETER ParquetConfiguration
        Contains the configuration information of the Parquet format.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-fileformatconfiguration.html#cfn-iotanalytics-datastore-fileformatconfiguration-parquetconfiguration
        UpdateType: Mutable
        Type: ParquetConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Datastore.FileFormatConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $JsonConfiguration,
        [parameter(Mandatory = $false)]
        $ParquetConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Datastore.FileFormatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
