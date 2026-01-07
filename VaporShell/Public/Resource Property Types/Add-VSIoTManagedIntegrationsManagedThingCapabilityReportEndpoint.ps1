function Add-VSIoTManagedIntegrationsManagedThingCapabilityReportEndpoint {
    <#
    .SYNOPSIS
        Adds an AWS::IoTManagedIntegrations::ManagedThing.CapabilityReportEndpoint resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTManagedIntegrations::ManagedThing.CapabilityReportEndpoint resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportendpoint.html

    .PARAMETER Capabilities
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportendpoint.html#cfn-iotmanagedintegrations-managedthing-capabilityreportendpoint-capabilities
        UpdateType: Mutable
        Type: List
        ItemType: CapabilityReportCapability
        DuplicatesAllowed: True

    .PARAMETER DeviceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportendpoint.html#cfn-iotmanagedintegrations-managedthing-capabilityreportendpoint-devicetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Id
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportendpoint.html#cfn-iotmanagedintegrations-managedthing-capabilityreportendpoint-id
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTManagedIntegrations.ManagedThing.CapabilityReportEndpoint')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.IoTManagedIntegrations.ManagedThing.CapabilityReportCapability"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Capabilities,

        [Parameter(Mandatory = $true)]
        $DeviceTypes,

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
        $Id

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTManagedIntegrations.ManagedThing.CapabilityReportEndpoint'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
