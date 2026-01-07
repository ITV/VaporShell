function Add-VSECSCapacityProviderInstanceRequirementsRequest {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::CapacityProvider.InstanceRequirementsRequest resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::CapacityProvider.InstanceRequirementsRequest resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html

    .PARAMETER LocalStorageTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-localstoragetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER InstanceGenerations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-instancegenerations
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER NetworkInterfaceCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-networkinterfacecount
        UpdateType: Mutable
        Type: NetworkInterfaceCountRequest

    .PARAMETER MemoryGiBPerVCpu
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-memorygibpervcpu
        UpdateType: Mutable
        Type: MemoryGiBPerVCpuRequest

    .PARAMETER AcceleratorTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-acceleratortypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER VCpuCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-vcpucount
        UpdateType: Mutable
        Type: VCpuCountRangeRequest

    .PARAMETER ExcludedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-excludedinstancetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AcceleratorManufacturers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-acceleratormanufacturers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-allowedinstancetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER LocalStorage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-localstorage
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CpuManufacturers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-cpumanufacturers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER NetworkBandwidthGbps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-networkbandwidthgbps
        UpdateType: Mutable
        Type: NetworkBandwidthGbpsRequest

    .PARAMETER AcceleratorCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-acceleratorcount
        UpdateType: Mutable
        Type: AcceleratorCountRequest

    .PARAMETER BareMetal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-baremetal
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RequireHibernateSupport
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-requirehibernatesupport
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER MaxSpotPriceAsPercentageOfOptimalOnDemandPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-maxspotpriceaspercentageofoptimalondemandprice
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER SpotMaxPricePercentageOverLowestPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-spotmaxpricepercentageoverlowestprice
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER BaselineEbsBandwidthMbps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-baselineebsbandwidthmbps
        UpdateType: Mutable
        Type: BaselineEbsBandwidthMbpsRequest

    .PARAMETER OnDemandMaxPricePercentageOverLowestPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-ondemandmaxpricepercentageoverlowestprice
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER AcceleratorNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-acceleratornames
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AcceleratorTotalMemoryMiB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-acceleratortotalmemorymib
        UpdateType: Mutable
        Type: AcceleratorTotalMemoryMiBRequest

    .PARAMETER BurstablePerformance
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-burstableperformance
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MemoryMiB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-memorymib
        UpdateType: Mutable
        Type: MemoryMiBRequest

    .PARAMETER TotalLocalStorageGB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancerequirementsrequest.html#cfn-ecs-capacityprovider-instancerequirementsrequest-totallocalstoragegb
        UpdateType: Mutable
        Type: TotalLocalStorageGBRequest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.CapacityProvider.InstanceRequirementsRequest')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LocalStorageTypes,

        [Parameter(Mandatory = $false)]
        $InstanceGenerations,

        [Parameter(Mandatory = $false)]
        $NetworkInterfaceCount,

        [Parameter(Mandatory = $false)]
        $MemoryGiBPerVCpu,

        [Parameter(Mandatory = $false)]
        $AcceleratorTypes,

        [Parameter(Mandatory = $true)]
        $VCpuCount,

        [Parameter(Mandatory = $false)]
        $ExcludedInstanceTypes,

        [Parameter(Mandatory = $false)]
        $AcceleratorManufacturers,

        [Parameter(Mandatory = $false)]
        $AllowedInstanceTypes,

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
        $LocalStorage,

        [Parameter(Mandatory = $false)]
        $CpuManufacturers,

        [Parameter(Mandatory = $false)]
        $NetworkBandwidthGbps,

        [Parameter(Mandatory = $false)]
        $AcceleratorCount,

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
        $BareMetal,

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
        $RequireHibernateSupport,

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
        $MaxSpotPriceAsPercentageOfOptimalOnDemandPrice,

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
        $SpotMaxPricePercentageOverLowestPrice,

        [Parameter(Mandatory = $false)]
        $BaselineEbsBandwidthMbps,

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
        $OnDemandMaxPricePercentageOverLowestPrice,

        [Parameter(Mandatory = $false)]
        $AcceleratorNames,

        [Parameter(Mandatory = $false)]
        $AcceleratorTotalMemoryMiB,

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
        $BurstablePerformance,

        [Parameter(Mandatory = $true)]
        $MemoryMiB,

        [Parameter(Mandatory = $false)]
        $TotalLocalStorageGB

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.CapacityProvider.InstanceRequirementsRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
