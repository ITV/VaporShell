function Add-VSIoTFleetWiseVehiclePeriodicStateTemplateUpdateStrategy {
    <#
    .SYNOPSIS
        Adds an AWS::IoTFleetWise::Vehicle.PeriodicStateTemplateUpdateStrategy resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTFleetWise::Vehicle.PeriodicStateTemplateUpdateStrategy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-periodicstatetemplateupdatestrategy.html

    .PARAMETER StateTemplateUpdateRate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-periodicstatetemplateupdatestrategy.html#cfn-iotfleetwise-vehicle-periodicstatetemplateupdatestrategy-statetemplateupdaterate
        UpdateType: Mutable
        Type: TimePeriod

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTFleetWise.Vehicle.PeriodicStateTemplateUpdateStrategy')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $StateTemplateUpdateRate

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTFleetWise.Vehicle.PeriodicStateTemplateUpdateStrategy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
