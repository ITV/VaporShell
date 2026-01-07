function Add-VSWorkspacesInstancesWorkspaceInstanceManagedInstance {
    <#
    .SYNOPSIS
        Adds an AWS::WorkspacesInstances::WorkspaceInstance.ManagedInstance resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkspacesInstances::WorkspaceInstance.ManagedInstance resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html

    .PARAMETER NetworkPerformanceOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-networkperformanceoptions
        UpdateType: Immutable
        Type: InstanceNetworkPerformanceOptionsRequest

    .PARAMETER TagSpecifications
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-tagspecifications
        UpdateType: Immutable
        Type: List
        ItemType: TagSpecification
        DuplicatesAllowed: True

    .PARAMETER UserData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-userdata
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER BlockDeviceMappings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-blockdevicemappings
        UpdateType: Immutable
        Type: List
        ItemType: BlockDeviceMapping
        DuplicatesAllowed: True

    .PARAMETER MaintenanceOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-maintenanceoptions
        UpdateType: Immutable
        Type: InstanceMaintenanceOptionsRequest

    .PARAMETER IamInstanceProfile
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-iaminstanceprofile
        UpdateType: Immutable
        Type: IamInstanceProfileSpecification

    .PARAMETER SubnetId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-subnetid
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER EbsOptimized
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-ebsoptimized
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER Placement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-placement
        UpdateType: Immutable
        Type: Placement

    .PARAMETER Ipv6AddressCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-ipv6addresscount
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER EnclaveOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-enclaveoptions
        UpdateType: Immutable
        Type: EnclaveOptionsRequest

    .PARAMETER NetworkInterfaces
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-networkinterfaces
        UpdateType: Immutable
        Type: List
        ItemType: InstanceNetworkInterfaceSpecification
        DuplicatesAllowed: True

    .PARAMETER ImageId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-imageid
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER InstanceType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-instancetype
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER Monitoring
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-monitoring
        UpdateType: Immutable
        Type: RunInstancesMonitoringEnabled

    .PARAMETER HibernationOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-hibernationoptions
        UpdateType: Immutable
        Type: HibernationOptionsRequest

    .PARAMETER LicenseSpecifications
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-licensespecifications
        UpdateType: Immutable
        Type: List
        ItemType: LicenseConfigurationRequest
        DuplicatesAllowed: True

    .PARAMETER MetadataOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-metadataoptions
        UpdateType: Immutable
        Type: InstanceMetadataOptionsRequest

    .PARAMETER DisableApiStop
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-disableapistop
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER CpuOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-cpuoptions
        UpdateType: Immutable
        Type: CpuOptionsRequest

    .PARAMETER PrivateDnsNameOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-privatednsnameoptions
        UpdateType: Immutable
        Type: PrivateDnsNameOptionsRequest

    .PARAMETER EnablePrimaryIpv6
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-enableprimaryipv6
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER KeyName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-keyname
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER InstanceMarketOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-instancemarketoptions
        UpdateType: Immutable
        Type: InstanceMarketOptionsRequest

    .PARAMETER CapacityReservationSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-capacityreservationspecification
        UpdateType: Immutable
        Type: CapacityReservationSpecification

    .PARAMETER CreditSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-creditspecification
        UpdateType: Immutable
        Type: CreditSpecificationRequest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.ManagedInstance')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NetworkPerformanceOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.TagSpecification"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TagSpecifications,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Function.Base64","Vaporshell.Resource.UserData"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UserData,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.BlockDeviceMapping"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BlockDeviceMappings,

        [Parameter(Mandatory = $false)]
        $MaintenanceOptions,

        [Parameter(Mandatory = $false)]
        $IamInstanceProfile,

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
        $SubnetId,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EbsOptimized,

        [Parameter(Mandatory = $false)]
        $Placement,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Ipv6AddressCount,

        [Parameter(Mandatory = $false)]
        $EnclaveOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.InstanceNetworkInterfaceSpecification"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $NetworkInterfaces,

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
        $ImageId,

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
        $InstanceType,

        [Parameter(Mandatory = $false)]
        $Monitoring,

        [Parameter(Mandatory = $false)]
        $HibernationOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.LicenseConfigurationRequest"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LicenseSpecifications,

        [Parameter(Mandatory = $false)]
        $MetadataOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DisableApiStop,

        [Parameter(Mandatory = $false)]
        $CpuOptions,

        [Parameter(Mandatory = $false)]
        $PrivateDnsNameOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EnablePrimaryIpv6,

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
        $KeyName,

        [Parameter(Mandatory = $false)]
        $InstanceMarketOptions,

        [Parameter(Mandatory = $false)]
        $CapacityReservationSpecification,

        [Parameter(Mandatory = $false)]
        $CreditSpecification

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.ManagedInstance'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
