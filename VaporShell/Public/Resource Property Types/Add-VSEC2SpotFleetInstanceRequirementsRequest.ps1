function Add-VSEC2SpotFleetInstanceRequirementsRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::SpotFleet.InstanceRequirementsRequest resource property to the template. 

    .DESCRIPTION
        Adds an AWS::EC2::SpotFleet.InstanceRequirementsRequest resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html

    .PARAMETER LocalStorageTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-localstoragetypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER InstanceGenerations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-instancegenerations
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER NetworkInterfaceCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-networkinterfacecount
        UpdateType: Immutable
        Type: NetworkInterfaceCountRequest

    .PARAMETER MemoryGiBPerVCpu
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-memorygibpervcpu
        UpdateType: Immutable
        Type: MemoryGiBPerVCpuRequest

    .PARAMETER AcceleratorTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-acceleratortypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER VCpuCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-vcpucount
        UpdateType: Immutable
        Type: VCpuCountRangeRequest

    .PARAMETER ExcludedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-excludedinstancetypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AcceleratorManufacturers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-acceleratormanufacturers
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-allowedinstancetypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER LocalStorage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-localstorage
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER CpuManufacturers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-cpumanufacturers
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER NetworkBandwidthGbps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-networkbandwidthgbps
        UpdateType: Immutable
        Type: NetworkBandwidthGbpsRequest

    .PARAMETER AcceleratorCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-acceleratorcount
        UpdateType: Immutable
        Type: AcceleratorCountRequest

    .PARAMETER BareMetal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-baremetal
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER RequireHibernateSupport
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-requirehibernatesupport
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER MaxSpotPriceAsPercentageOfOptimalOnDemandPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-maxspotpriceaspercentageofoptimalondemandprice
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER SpotMaxPricePercentageOverLowestPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-spotmaxpricepercentageoverlowestprice
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER BaselineEbsBandwidthMbps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-baselineebsbandwidthmbps
        UpdateType: Immutable
        Type: BaselineEbsBandwidthMbpsRequest

    .PARAMETER OnDemandMaxPricePercentageOverLowestPrice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-ondemandmaxpricepercentageoverlowestprice
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER AcceleratorNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-acceleratornames
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AcceleratorTotalMemoryMiB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-acceleratortotalmemorymib
        UpdateType: Immutable
        Type: AcceleratorTotalMemoryMiBRequest

    .PARAMETER BurstablePerformance
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-burstableperformance
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER MemoryMiB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-memorymib
        UpdateType: Immutable
        Type: MemoryMiBRequest

    .PARAMETER TotalLocalStorageGB
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancerequirementsrequest.html#cfn-ec2-spotfleet-instancerequirementsrequest-totallocalstoragegb
        UpdateType: Immutable
        Type: TotalLocalStorageGBRequest

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.SpotFleet.InstanceRequirementsRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $LocalStorageTypes,
        [parameter(Mandatory = $false)]
        $InstanceGenerations,
        [parameter(Mandatory = $false)]
        $NetworkInterfaceCount,
        [parameter(Mandatory = $false)]
        $MemoryGiBPerVCpu,
        [parameter(Mandatory = $false)]
        $AcceleratorTypes,
        [parameter(Mandatory = $false)]
        $VCpuCount,
        [parameter(Mandatory = $false)]
        $ExcludedInstanceTypes,
        [parameter(Mandatory = $false)]
        $AcceleratorManufacturers,
        [parameter(Mandatory = $false)]
        $AllowedInstanceTypes,
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
        $CpuManufacturers,
        [parameter(Mandatory = $false)]
        $NetworkBandwidthGbps,
        [parameter(Mandatory = $false)]
        $AcceleratorCount,
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
        $BaselineEbsBandwidthMbps,
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
        $AcceleratorNames,
        [parameter(Mandatory = $false)]
        $AcceleratorTotalMemoryMiB,
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
        $MemoryMiB,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.SpotFleet.InstanceRequirementsRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
