function Add-VSIoTAnalyticsDatastoreDatastorePartition {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Datastore.DatastorePartition resource property to the template. A single dimension to partition a data store. The dimension must be an AttributePartition or a TimestampPartition.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Datastore.DatastorePartition resource property to the template.
A single dimension to partition a data store. The dimension must be an AttributePartition or a TimestampPartition.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorepartition.html

    .PARAMETER Partition
        A partition dimension defined by an attribute.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorepartition.html#cfn-iotanalytics-datastore-datastorepartition-partition
        UpdateType: Mutable
        Type: Partition

    .PARAMETER TimestampPartition
        A partition dimension defined by a timestamp attribute.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorepartition.html#cfn-iotanalytics-datastore-datastorepartition-timestamppartition
        UpdateType: Mutable
        Type: TimestampPartition

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Datastore.DatastorePartition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Partition,
        [parameter(Mandatory = $false)]
        $TimestampPartition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Datastore.DatastorePartition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
