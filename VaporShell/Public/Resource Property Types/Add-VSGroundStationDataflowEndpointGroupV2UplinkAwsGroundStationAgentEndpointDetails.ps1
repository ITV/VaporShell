function Add-VSGroundStationDataflowEndpointGroupV2UplinkAwsGroundStationAgentEndpointDetails {
    <#
    .SYNOPSIS
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpointDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::GroundStation::DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpointDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails.html

    .PARAMETER AgentStatus
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails.html#cfn-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails-agentstatus
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AuditResults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails.html#cfn-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails-auditresults
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DataflowDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails.html#cfn-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails-dataflowdetails
        UpdateType: Mutable
        Type: UplinkDataflowDetails

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails.html#cfn-groundstation-dataflowendpointgroupv2-uplinkawsgroundstationagentendpointdetails-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpointDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AgentStatus,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AuditResults,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GroundStation.DataflowEndpointGroupV2.UplinkAwsGroundStationAgentEndpointDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
