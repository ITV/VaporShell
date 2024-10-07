function Add-VSIoTAnalyticsDatastoreIotSiteWiseMultiLayerStorage {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Datastore.IotSiteWiseMultiLayerStorage resource property to the template. 

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Datastore.IotSiteWiseMultiLayerStorage resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-iotsitewisemultilayerstorage.html

    .PARAMETER CustomerManagedS3Storage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-iotsitewisemultilayerstorage.html#cfn-iotanalytics-datastore-iotsitewisemultilayerstorage-customermanageds3storage
        UpdateType: Mutable
        Type: CustomerManagedS3Storage

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Datastore.IotSiteWiseMultiLayerStorage')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomerManagedS3Storage
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Datastore.IotSiteWiseMultiLayerStorage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
