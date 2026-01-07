function Add-VSGroundStationDataflowEndpointGroupV2DownlinkConnectionDetails {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.DownlinkConnectionDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.DownlinkConnectionDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-downlinkconnectiondetails.html

    .PARAMETER EgressAddressAndPort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-downlinkconnectiondetails.html#cfn-groundstation-dataflowendpointgroupv2-downlinkconnectiondetails-egressaddressandport
        UpdateType: Conditional
        Type: ConnectionDetails

    .PARAMETER AgentIpAndPortAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-downlinkconnectiondetails.html#cfn-groundstation-dataflowendpointgroupv2-downlinkconnectiondetails-agentipandportaddress
        UpdateType: Conditional
        Type: RangedConnectionDetails

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.DownlinkConnectionDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $EgressAddressAndPort,

        [Parameter(Mandatory = $true)]
        $AgentIpAndPortAddress

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.DownlinkConnectionDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
