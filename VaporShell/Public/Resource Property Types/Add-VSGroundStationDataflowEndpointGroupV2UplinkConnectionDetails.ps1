function Add-VSGroundStationDataflowEndpointGroupV2UplinkConnectionDetails {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.UplinkConnectionDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.UplinkConnectionDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkconnectiondetails.html

    .PARAMETER AgentIpAndPortAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkconnectiondetails.html#cfn-groundstation-dataflowendpointgroupv2-uplinkconnectiondetails-agentipandportaddress
        UpdateType: Conditional
        Type: RangedConnectionDetails

    .PARAMETER IngressAddressAndPort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkconnectiondetails.html#cfn-groundstation-dataflowendpointgroupv2-uplinkconnectiondetails-ingressaddressandport
        UpdateType: Conditional
        Type: ConnectionDetails

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.UplinkConnectionDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $AgentIpAndPortAddress,

        [Parameter(Mandatory = $true)]
        $IngressAddressAndPort

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.UplinkConnectionDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
