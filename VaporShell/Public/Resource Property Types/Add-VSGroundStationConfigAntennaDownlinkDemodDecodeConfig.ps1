function Add-VSGroundStationConfigAntennaDownlinkDemodDecodeConfig {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::Config.AntennaDownlinkDemodDecodeConfig resource property to the template. Provides information about how AWS Ground Station should configure an antenna for downlink during a contact. Use an antenna downlink demod decode config in a mission profile to receive the downlink data that has been demodulated and decoded.

    .DESCRIPTION
        Adds an AWS::GroundStation::Config.AntennaDownlinkDemodDecodeConfig resource property to the template.
Provides information about how AWS Ground Station should configure an antenna for downlink during a contact. Use an antenna downlink demod decode config in a mission profile to receive the downlink data that has been demodulated and decoded.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkdemoddecodeconfig.html

    .PARAMETER SpectrumConfig
        Defines the spectrum configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkdemoddecodeconfig.html#cfn-groundstation-config-antennadownlinkdemoddecodeconfig-spectrumconfig
        UpdateType: Mutable
        Type: SpectrumConfig

    .PARAMETER DemodulationConfig
        Defines how the RF signal will be demodulated.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkdemoddecodeconfig.html#cfn-groundstation-config-antennadownlinkdemoddecodeconfig-demodulationconfig
        UpdateType: Mutable
        Type: DemodulationConfig

    .PARAMETER DecodeConfig
        Defines how the RF signal will be decoded.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkdemoddecodeconfig.html#cfn-groundstation-config-antennadownlinkdemoddecodeconfig-decodeconfig
        UpdateType: Mutable
        Type: DecodeConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GroundStation.Config.AntennaDownlinkDemodDecodeConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SpectrumConfig,
        [parameter(Mandatory = $false)]
        $DemodulationConfig,
        [parameter(Mandatory = $false)]
        $DecodeConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.Config.AntennaDownlinkDemodDecodeConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
