function Add-VSIoTAnalyticsDatastoreServiceManagedS3 {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Datastore.ServiceManagedS3 resource property to the template. Used to store data in an Amazon S3 bucket managed by AWS IoT Analytics. You can't change the choice of Amazon S3 storage after your data store is created.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Datastore.ServiceManagedS3 resource property to the template.
Used to store data in an Amazon S3 bucket managed by AWS IoT Analytics. You can't change the choice of Amazon S3 storage after your data store is created.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-servicemanageds3.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Datastore.ServiceManagedS3')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Datastore.ServiceManagedS3'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
