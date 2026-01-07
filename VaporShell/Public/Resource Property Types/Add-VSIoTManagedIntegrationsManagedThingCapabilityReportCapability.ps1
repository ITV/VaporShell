function Add-VSIoTManagedIntegrationsManagedThingCapabilityReportCapability {
    <#
    .SYNOPSIS
        Adds an AWS::IoTManagedIntegrations::ManagedThing.CapabilityReportCapability resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTManagedIntegrations::ManagedThing.CapabilityReportCapability resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportcapability.html

    .PARAMETER Version
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportcapability.html#cfn-iotmanagedintegrations-managedthing-capabilityreportcapability-version
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Actions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportcapability.html#cfn-iotmanagedintegrations-managedthing-capabilityreportcapability-actions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Events
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportcapability.html#cfn-iotmanagedintegrations-managedthing-capabilityreportcapability-events
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Id
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportcapability.html#cfn-iotmanagedintegrations-managedthing-capabilityreportcapability-id
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Properties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportcapability.html#cfn-iotmanagedintegrations-managedthing-capabilityreportcapability-properties
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotmanagedintegrations-managedthing-capabilityreportcapability.html#cfn-iotmanagedintegrations-managedthing-capabilityreportcapability-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTManagedIntegrations.ManagedThing.CapabilityReportCapability')]
    [CmdletBinding()]

    Param
    (
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
        $Version,

        [Parameter(Mandatory = $true)]
        $Actions,

        [Parameter(Mandatory = $true)]
        $Events,

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
        $Id,

        [Parameter(Mandatory = $true)]
        $Properties,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTManagedIntegrations.ManagedThing.CapabilityReportCapability'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
