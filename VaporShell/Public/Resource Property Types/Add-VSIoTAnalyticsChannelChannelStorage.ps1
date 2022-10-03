function Add-VSIoTAnalyticsChannelChannelStorage {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Channel.ChannelStorage resource property to the template. Where channel data is stored. You may choose one of serviceManagedS3, customerManagedS3 storage. If not specified, the default is serviceManagedS3. This can't be changed after creation of the channel.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Channel.ChannelStorage resource property to the template.
Where channel data is stored. You may choose one of serviceManagedS3, customerManagedS3 storage. If not specified, the default is serviceManagedS3. This can't be changed after creation of the channel.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html

    .PARAMETER ServiceManagedS3
        Used to store channel data in an S3 bucket managed by AWS IoT Analytics. You can't change the choice of S3 storage after the data store is created.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-servicemanageds3
        UpdateType: Mutable
        Type: ServiceManagedS3

    .PARAMETER CustomerManagedS3
        Used to store channel data in an S3 bucket that you manage. If customer managed storage is selected, the retentionPeriod parameter is ignored. You can't change the choice of S3 storage after the data store is created.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-customermanageds3
        UpdateType: Mutable
        Type: CustomerManagedS3

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Channel.ChannelStorage')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ServiceManagedS3,
        [parameter(Mandatory = $false)]
        $CustomerManagedS3
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Channel.ChannelStorage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
