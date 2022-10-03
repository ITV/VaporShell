function Add-VSEC2EC2FleetInstanceRequirementsRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::EC2Fleet.InstanceRequirementsRequest resource property to the template. The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.

    .DESCRIPTION
        Adds an AWS::EC2::EC2Fleet.InstanceRequirementsRequest resource property to the template.
The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.

When you specify multiple parameters, you get instance types that satisfy all of the specified parameters. If you specify multiple values for a parameter, you get instance types that satisfy any of the specified values.

**Note**

You must specify VCpuCount and MemoryMiB. All other parameters are optional. Any unspecified optional parameter is set to its default.

For more information, see Attribute-based instance type selection for EC2 Fleet: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html, Attribute-based instance type selection for Spot Fleet: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html, and Spot placement score: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html in the *Amazon EC2 User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html

    .PARAMETER VCpuCount
        The minimum and maximum number of vCPUs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-vcpucount
        UpdateType: Immutable
        Type: VCpuCountRangeRequest

    .PARAMETER MemoryMiB
        The minimum and maximum amount of memory, in MiB.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-memorymib
        UpdateType: Immutable
        Type: MemoryMiBRequest

    .PARAMETER CpuManufacturers
        The CPU manufacturers to include.
+ For instance types with Intel CPUs, specify intel.
+ For instance types with AMD CPUs, specify amd.
+ For instance types with AWS CPUs, specify amazon-web-services.
Don't confuse the CPU manufacturer with the CPU architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image AMI that you specify in your launch template.
Default: Any manufacturer

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-cpumanufacturers
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER MemoryGiBPerVCpu
        The minimum and maximum amount of memory per vCPU, in GiB.
Default: No minimum or maximum limits

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-memorygibpervcpu
        UpdateType: Immutable
        Type: MemoryGiBPerVCpuRequest

    .PARAMETER ExcludedInstanceTypes
        The instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk *, to exclude an instance family, type, size, or generation. The following are examples: m5.8xlarge, c5*.*, m5a.*, r*, *3*.
For example, if you specify c5*,Amazon EC2 will exclude the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, Amazon EC2 will exclude all the M5a instance types, but not the M5n instance types.
Default: No excluded instance types

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-excludedinstancetypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER InstanceGenerations
        Indicates whether current or previous generation instance types are included. The current generation instance types are recommended for use. Current generation instance types are typically the latest two to three generations in each instance family. For more information, see Instance types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html in the *Amazon EC2 User Guide*.
For current generation instance types, specify current.
For previous generation instance types, specify previous.
Default: Current and previous generation instance types

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-instancegenerations
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER SpotMaxPricePercentageOverLowestPrice
        The price protection threshold for Spot Instance. This is the maximum you’ll pay for an Spot Instance, expressed as a percentage above the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 selects instance types with your attributes, it excludes instance types priced above your threshold.
The parameter accepts an integer, which Amazon EC2 interprets as a percentage.
To turn off price protection, specify a high value, such as 999999.
This parameter is not supported for GetSpotPlacementScores: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html and GetInstanceTypesFromInstanceRequirements: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html.
If you set TargetCapacityUnitType to vcpu or memory-mib, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
Default: 100

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-spotmaxpricepercentageoverlowestprice
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER OnDemandMaxPricePercentageOverLowestPrice
        The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage above the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 selects instance types with your attributes, it excludes instance types priced above your threshold.
The parameter accepts an integer, which Amazon EC2 interprets as a percentage.
To turn off price protection, specify a high value, such as 999999.
This parameter is not supported for GetSpotPlacementScores: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html and GetInstanceTypesFromInstanceRequirements: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html.
If you set TargetCapacityUnitType to vcpu or memory-mib, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
Default: 20

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-ondemandmaxpricepercentageoverlowestprice
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER BareMetal
        Indicates whether bare metal instance types must be included, excluded, or required.
+ To include bare metal instance types, specify included.
+ To require only bare metal instance types, specify required.
+ To exclude bare metal instance types, specify excluded.
Default: excluded

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-baremetal
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER BurstablePerformance
        Indicates whether burstable performance T instance types are included, excluded, or required. For more information, see Burstable performance instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html.
+ To include burstable performance instance types, specify included.
+ To require only burstable performance instance types, specify required.
+ To exclude burstable performance instance types, specify excluded.
Default: excluded

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-burstableperformance
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER RequireHibernateSupport
        Indicates whether instance types must support hibernation for On-Demand Instances.
This parameter is not supported for GetSpotPlacementScores: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html.
Default: false

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-requirehibernatesupport
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER NetworkInterfaceCount
        The minimum and maximum number of network interfaces.
Default: No minimum or maximum limits

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-networkinterfacecount
        UpdateType: Immutable
        Type: NetworkInterfaceCountRequest

    .PARAMETER LocalStorage
        Indicates whether instance types with instance store volumes are included, excluded, or required. For more information, Amazon EC2 instance store: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html in the *Amazon EC2 User Guide*.
+ To include instance types with instance store volumes, specify included.
+ To require only instance types with instance store volumes, specify required.
+ To exclude instance types with instance store volumes, specify excluded.
Default: included

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-localstorage
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER LocalStorageTypes
        The type of local storage that is required.
+ For instance types with hard disk drive HDD storage, specify hdd.
+ For instance types with solid state drive SDD storage, specify sdd.
Default: hdd and sdd

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-localstoragetypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER TotalLocalStorageGB
        The minimum and maximum amount of total local storage, in GB.
Default: No minimum or maximum limits

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-totallocalstoragegb
        UpdateType: Immutable
        Type: TotalLocalStorageGBRequest

    .PARAMETER BaselineEbsBandwidthMbps
        The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps. For more information, see Amazon EBS–optimized instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html in the *Amazon EC2 User Guide*.
Default: No minimum or maximum limits

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-baselineebsbandwidthmbps
        UpdateType: Immutable
        Type: BaselineEbsBandwidthMbpsRequest

    .PARAMETER AcceleratorTypes
        The accelerator types that must be on the instance type.
+ To include instance types with GPU hardware, specify gpu.
+ To include instance types with FPGA hardware, specify fpga.
+ To include instance types with inference hardware, specify inference.
Default: Any accelerator type

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratortypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AcceleratorCount
        The minimum and maximum number of accelerators GPUs, FPGAs, or AWS Inferentia chips on an instance.
To exclude accelerator-enabled instance types, set Max to 0.
Default: No minimum or maximum limits

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratorcount
        UpdateType: Immutable
        Type: AcceleratorCountRequest

    .PARAMETER AcceleratorManufacturers
        Indicates whether instance types must have accelerators by specific manufacturers.
+ For instance types with NVIDIA devices, specify nvidia.
+ For instance types with AMD devices, specify amd.
+ For instance types with AWS devices, specify amazon-web-services.
+ For instance types with Xilinx devices, specify xilinx.
Default: Any manufacturer

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratormanufacturers
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AcceleratorNames
        The accelerators that must be on the instance type.
+ For instance types with NVIDIA A100 GPUs, specify a100.
+ For instance types with NVIDIA V100 GPUs, specify v100.
+ For instance types with NVIDIA K80 GPUs, specify k80.
+ For instance types with NVIDIA T4 GPUs, specify t4.
+ For instance types with NVIDIA M60 GPUs, specify m60.
+ For instance types with AMD Radeon Pro V520 GPUs, specify radeon-pro-v520.
+ For instance types with Xilinx VU9P FPGAs, specify  vu9p.
Default: Any accelerator

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratornames
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AcceleratorTotalMemoryMiB
        The minimum and maximum amount of total accelerator memory, in MiB.
Default: No minimum or maximum limits

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratortotalmemorymib
        UpdateType: Immutable
        Type: AcceleratorTotalMemoryMiBRequest

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.EC2Fleet.InstanceRequirementsRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $VCpuCount,
        [parameter(Mandatory = $false)]
        $MemoryMiB,
        [parameter(Mandatory = $false)]
        $CpuManufacturers,
        [parameter(Mandatory = $false)]
        $MemoryGiBPerVCpu,
        [parameter(Mandatory = $false)]
        $ExcludedInstanceTypes,
        [parameter(Mandatory = $false)]
        $InstanceGenerations,
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
        $NetworkInterfaceCount,
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
        $LocalStorageTypes,
        [parameter(Mandatory = $false)]
        $TotalLocalStorageGB,
        [parameter(Mandatory = $false)]
        $BaselineEbsBandwidthMbps,
        [parameter(Mandatory = $false)]
        $AcceleratorTypes,
        [parameter(Mandatory = $false)]
        $AcceleratorCount,
        [parameter(Mandatory = $false)]
        $AcceleratorManufacturers,
        [parameter(Mandatory = $false)]
        $AcceleratorNames,
        [parameter(Mandatory = $false)]
        $AcceleratorTotalMemoryMiB
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.EC2Fleet.InstanceRequirementsRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
