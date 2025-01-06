function Add-VSAutoScalingAutoScalingGroupInstanceRequirements {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::AutoScalingGroup.InstanceRequirements resource property to the template.

    .DESCRIPTION
        Adds an AWS::AutoScaling::AutoScalingGroup.InstanceRequirements resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html

    .PARAMETER InstanceGenerations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-instancegenerations
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER AcceleratorTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratortypes
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER MemoryGiBPerVCpu
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-memorygibpervcpu
        UpdateType: Conditional
        Type: MemoryGiBPerVCpuRequest

    .PARAMETER AcceleratorManufacturers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratormanufacturers
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER VCpuCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-vcpucount
        UpdateType: Conditional
        Type: VCpuCountRequest

    .PARAMETER LocalStorage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-localstorage
        UpdateType: Conditional
        PrimitiveType: String

    .PARAMETER CpuManufacturers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-cpumanufacturers
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER BareMetal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-baremetal
        UpdateType: Conditional
        PrimitiveType: String

    .PARAMETER RequireHibernateSupport
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-requirehibernatesupport
        UpdateType: Conditional
        PrimitiveType: Boolean

    .PARAMETER MaxSpotPriceAsPercentageOfOptimalOnDemandPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-maxspotpriceaspercentageofoptimalondemandprice
        UpdateType: Conditional
        PrimitiveType: Integer

    .PARAMETER OnDemandMaxPricePercentageOverLowestPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-ondemandmaxpricepercentageoverlowestprice
        UpdateType: Conditional
        PrimitiveType: Integer

    .PARAMETER MemoryMiB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-memorymib
        UpdateType: Conditional
        Type: MemoryMiBRequest

    .PARAMETER LocalStorageTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-localstoragetypes
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER NetworkInterfaceCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-networkinterfacecount
        UpdateType: Conditional
        Type: NetworkInterfaceCountRequest

    .PARAMETER ExcludedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-excludedinstancetypes
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER AllowedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-allowedinstancetypes
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER AcceleratorCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratorcount
        UpdateType: Conditional
        Type: AcceleratorCountRequest

    .PARAMETER NetworkBandwidthGbps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-networkbandwidthgbps
        UpdateType: Conditional
        Type: NetworkBandwidthGbpsRequest

    .PARAMETER BaselinePerformanceFactors
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-baselineperformancefactors
        UpdateType: Conditional
        Type: BaselinePerformanceFactorsRequest

    .PARAMETER BaselineEbsBandwidthMbps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-baselineebsbandwidthmbps
        UpdateType: Conditional
        Type: BaselineEbsBandwidthMbpsRequest

    .PARAMETER SpotMaxPricePercentageOverLowestPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-spotmaxpricepercentageoverlowestprice
        UpdateType: Conditional
        PrimitiveType: Integer

    .PARAMETER AcceleratorNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratornames
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER AcceleratorTotalMemoryMiB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratortotalmemorymib
        UpdateType: Conditional
        Type: AcceleratorTotalMemoryMiBRequest

    .PARAMETER BurstablePerformance
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-burstableperformance
        UpdateType: Conditional
        PrimitiveType: String

    .PARAMETER TotalLocalStorageGB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-totallocalstoragegb
        UpdateType: Conditional
        Type: TotalLocalStorageGBRequest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AutoScaling.AutoScalingGroup.InstanceRequirements')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $InstanceGenerations,

        [Parameter(Mandatory = $false)]
        $AcceleratorTypes,

        [Parameter(Mandatory = $false)]
        $MemoryGiBPerVCpu,

        [Parameter(Mandatory = $false)]
        $AcceleratorManufacturers,

        [Parameter(Mandatory = $true)]
        $VCpuCount,

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
        $OnDemandMaxPricePercentageOverLowestPrice,

        [Parameter(Mandatory = $true)]
        $MemoryMiB,

        [Parameter(Mandatory = $false)]
        $LocalStorageTypes,

        [Parameter(Mandatory = $false)]
        $NetworkInterfaceCount,

        [Parameter(Mandatory = $false)]
        $ExcludedInstanceTypes,

        [Parameter(Mandatory = $false)]
        $AllowedInstanceTypes,

        [Parameter(Mandatory = $false)]
        $AcceleratorCount,

        [Parameter(Mandatory = $false)]
        $NetworkBandwidthGbps,

        [Parameter(Mandatory = $false)]
        $BaselinePerformanceFactors,

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
        $SpotMaxPricePercentageOverLowestPrice,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.AutoScalingGroup.InstanceRequirements'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
