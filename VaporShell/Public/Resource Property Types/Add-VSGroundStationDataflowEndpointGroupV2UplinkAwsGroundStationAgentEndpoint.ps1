function Add-VSGroundStationDataflowEndpointGroupV2UplinkAwsGroundStationAgentEndpoint {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpoint resource property to the template.

    .DESCRIPTION
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpoint resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpoint.html

    .PARAMETER DataflowDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpoint.html#cfn-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpoint-dataflowdetails
        UpdateType: Immutable
        Type: UplinkDataflowDetails

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpoint.html#cfn-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpoint-name
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpoint')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $DataflowDetails,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpoint'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
