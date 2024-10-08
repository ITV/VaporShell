function Add-VSGroundStationConfigConfigData {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::Config.ConfigData resource property to the template.

    .DESCRIPTION
        Adds an AWS::GroundStation::Config.ConfigData resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html

    .PARAMETER DataflowEndpointConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-dataflowendpointconfig
        UpdateType: Mutable
        Type: DataflowEndpointConfig

    .PARAMETER UplinkEchoConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-uplinkechoconfig
        UpdateType: Mutable
        Type: UplinkEchoConfig

    .PARAMETER AntennaDownlinkConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-antennadownlinkconfig
        UpdateType: Mutable
        Type: AntennaDownlinkConfig

    .PARAMETER AntennaDownlinkDemodDecodeConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-antennadownlinkdemoddecodeconfig
        UpdateType: Mutable
        Type: AntennaDownlinkDemodDecodeConfig

    .PARAMETER TrackingConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-trackingconfig
        UpdateType: Mutable
        Type: TrackingConfig

    .PARAMETER AntennaUplinkConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-configdata.html#cfn-groundstation-config-configdata-antennauplinkconfig
        UpdateType: Mutable
        Type: AntennaUplinkConfig

    .PARAMETER S3RecordingConfig
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
        [Parameter(Mandatory = $false)]
        $DataflowEndpointConfig,

        [Parameter(Mandatory = $false)]
        $UplinkEchoConfig,

        [Parameter(Mandatory = $false)]
        $AntennaDownlinkConfig,

        [Parameter(Mandatory = $false)]
        $AntennaDownlinkDemodDecodeConfig,

        [Parameter(Mandatory = $false)]
        $TrackingConfig,

        [Parameter(Mandatory = $false)]
        $AntennaUplinkConfig,

        [Parameter(Mandatory = $false)]
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
