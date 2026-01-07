function Add-VSDeadlineFleetServiceManagedEc2FleetConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Deadline::Fleet.ServiceManagedEc2FleetConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Deadline::Fleet.ServiceManagedEc2FleetConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html

    .PARAMETER StorageProfileId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html#cfn-deadline-fleet-servicemanagedec2fleetconfiguration-storageprofileid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InstanceMarketOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html#cfn-deadline-fleet-servicemanagedec2fleetconfiguration-instancemarketoptions
        UpdateType: Mutable
        Type: ServiceManagedEc2InstanceMarketOptions

    .PARAMETER InstanceCapabilities
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html#cfn-deadline-fleet-servicemanagedec2fleetconfiguration-instancecapabilities
        UpdateType: Mutable
        Type: ServiceManagedEc2InstanceCapabilities

    .PARAMETER VpcConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-servicemanagedec2fleetconfiguration.html#cfn-deadline-fleet-servicemanagedec2fleetconfiguration-vpcconfiguration
        UpdateType: Mutable
        Type: VpcConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Deadline.Fleet.ServiceManagedEc2FleetConfiguration')]
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
        $StorageProfileId,

        [Parameter(Mandatory = $true)]
        $InstanceMarketOptions,

        [Parameter(Mandatory = $true)]
        $InstanceCapabilities,

        [Parameter(Mandatory = $false)]
        $VpcConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Deadline.Fleet.ServiceManagedEc2FleetConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
