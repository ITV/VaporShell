function Add-VSGroundStationDataflowEndpointGroupV2EndpointDetails {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.EndpointDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.EndpointDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-endpointdetails.html

    .PARAMETER UplinkAwsGroundStationAgentEndpoint
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-endpointdetails.html#cfn-groundstation-dataflowendpointgroupv2-endpointdetails-uplinkawsgroundstationagentendpoint
        UpdateType: Mutable
        Type: UplinkAwsGroundStationAgentEndpointDetails

    .PARAMETER DownlinkAwsGroundStationAgentEndpoint
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-endpointdetails.html#cfn-groundstation-dataflowendpointgroupv2-endpointdetails-downlinkawsgroundstationagentendpoint
        UpdateType: Mutable
        Type: DownlinkAwsGroundStationAgentEndpointDetails

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.EndpointDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $UplinkAwsGroundStationAgentEndpoint,

        [Parameter(Mandatory = $false)]
        $DownlinkAwsGroundStationAgentEndpoint

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.EndpointDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
