function Add-VSGroundStationConfigAntennaDownlinkConfig {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::Config.AntennaDownlinkConfig resource property to the template. Provides information about how AWS Ground Station should configure an antenna for downlink during a contact. Use an antenna downlink config in a mission profile to receive the downlink data in raw DigIF format.

    .DESCRIPTION
        Adds an AWS::GroundStation::Config.AntennaDownlinkConfig resource property to the template.
Provides information about how AWS Ground Station should configure an antenna for downlink during a contact. Use an antenna downlink config in a mission profile to receive the downlink data in raw DigIF format.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkconfig.html

    .PARAMETER SpectrumConfig
        Defines the spectrum configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkconfig.html#cfn-groundstation-config-antennadownlinkconfig-spectrumconfig
        UpdateType: Mutable
        Type: SpectrumConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GroundStation.Config.AntennaDownlinkConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SpectrumConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.Config.AntennaDownlinkConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
