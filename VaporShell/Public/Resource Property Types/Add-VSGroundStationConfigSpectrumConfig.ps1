function Add-VSGroundStationConfigSpectrumConfig {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::Config.SpectrumConfig resource property to the template. Defines a spectrum.

    .DESCRIPTION
        Adds an AWS::GroundStation::Config.SpectrumConfig resource property to the template.
Defines a spectrum.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html

    .PARAMETER CenterFrequency
        The center frequency of the spectrum. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html#cfn-groundstation-config-spectrumconfig-centerfrequency
        UpdateType: Mutable
        Type: Frequency

    .PARAMETER Bandwidth
        The bandwidth of the spectrum. AWS Ground Station currently has the following bandwidth limitations:
+ For AntennaDownlinkDemodDecodeconfig, valid values are between 125 kHz to 650 MHz.
+ For AntennaDownlinkconfig, valid values are between 10 kHz to 54 MHz.
+ For AntennaUplinkConfig, valid values are between 10 kHz to 54 MHz.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html#cfn-groundstation-config-spectrumconfig-bandwidth
        UpdateType: Mutable
        Type: FrequencyBandwidth

    .PARAMETER Polarization
        The polarization of the spectrum. Valid values are "RIGHT_HAND" and "LEFT_HAND". Capturing both "RIGHT_HAND" and "LEFT_HAND" polarization requires two separate configs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html#cfn-groundstation-config-spectrumconfig-polarization
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GroundStation.Config.SpectrumConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CenterFrequency,
        [parameter(Mandatory = $false)]
        $Bandwidth,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Polarization
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.Config.SpectrumConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
