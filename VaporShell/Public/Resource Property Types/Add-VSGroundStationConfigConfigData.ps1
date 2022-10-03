function Add-VSGroundStationConfigConfigData {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::Config.ConfigData resource property to the template. Config objects provide information to Ground Station about how to configure the antenna and how data flows during a contact.

    .DESCRIPTION
        Adds an AWS::GroundStation::Config.ConfigData resource property to the template.
Config objects provide information to Ground Station about how to configure the antenna and how data flows during a contact.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html

    .PARAMETER AntennaDownlinkConfig
        Provides information for an antenna downlink config object. Antenna downlink config objects are used to provide parameters for downlinks where no demodulation or decoding is performed by Ground Station RF over IP downlinks.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-antennadownlinkconfig
        UpdateType: Mutable
        Type: AntennaDownlinkConfig

    .PARAMETER TrackingConfig
        Provides information for a tracking config object. Tracking config objects are used to provide parameters about how to track the satellite through the sky during a contact.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-trackingconfig
        UpdateType: Mutable
        Type: TrackingConfig

    .PARAMETER DataflowEndpointConfig
        Provides information for a dataflow endpoint config object. Dataflow endpoint config objects are used to provide parameters about which IP endpoints to use during a contact. Dataflow endpoints are where Ground Station sends data during a downlink contact and where Ground Station receives data to send to the satellite during an uplink contact.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-dataflowendpointconfig
        UpdateType: Mutable
        Type: DataflowEndpointConfig

    .PARAMETER AntennaDownlinkDemodDecodeConfig
        Provides information for a downlink demod decode config object. Downlink demod decode config objects are used to provide parameters for downlinks where the Ground Station service will demodulate and decode the downlinked data.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-antennadownlinkdemoddecodeconfig
        UpdateType: Mutable
        Type: AntennaDownlinkDemodDecodeConfig

    .PARAMETER AntennaUplinkConfig
        Provides information for an uplink config object. Uplink config objects are used to provide parameters for uplink contacts.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-antennauplinkconfig
        UpdateType: Mutable
        Type: AntennaUplinkConfig

    .PARAMETER UplinkEchoConfig
        Provides information for an uplink echo config object. Uplink echo config objects are used to provide parameters for uplink echo during uplink contacts.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-uplinkechoconfig
        UpdateType: Mutable
        Type: UplinkEchoConfig

    .PARAMETER S3RecordingConfig
        Provides information for an S3 recording config object. S3 recording config objects are used to provide parameters for S3 recording during downlink contacts.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-s3recordingconfig
        UpdateType: Mutable
        Type: S3RecordingConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GroundStation.Config.ConfigData')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AntennaDownlinkConfig,
        [parameter(Mandatory = $false)]
        $TrackingConfig,
        [parameter(Mandatory = $false)]
        $DataflowEndpointConfig,
        [parameter(Mandatory = $false)]
        $AntennaDownlinkDemodDecodeConfig,
        [parameter(Mandatory = $false)]
        $AntennaUplinkConfig,
        [parameter(Mandatory = $false)]
        $UplinkEchoConfig,
        [parameter(Mandatory = $false)]
        $S3RecordingConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.Config.ConfigData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
