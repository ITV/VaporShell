function Add-VSSageMakerClusterClusterRestrictedInstanceGroup {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Cluster.ClusterRestrictedInstanceGroup resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Cluster.ClusterRestrictedInstanceGroup resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html

    .PARAMETER OverrideVpcConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-overridevpcconfig
        UpdateType: Mutable
        Type: VpcConfig

    .PARAMETER InstanceCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancecount
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER OnStartDeepHealthChecks
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-onstartdeephealthchecks
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER EnvironmentConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-environmentconfig
        UpdateType: Mutable
        Type: EnvironmentConfig

    .PARAMETER InstanceGroupName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancegroupname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InstanceStorageConfigs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancestorageconfigs
        UpdateType: Mutable
        Type: List
        ItemType: ClusterInstanceStorageConfig
        DuplicatesAllowed: True

    .PARAMETER CurrentCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-currentcount
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER TrainingPlanArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-trainingplanarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InstanceType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-instancetype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ThreadsPerCore
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-threadspercore
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER ExecutionRole
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterrestrictedinstancegroup.html#cfn-sagemaker-cluster-clusterrestrictedinstancegroup-executionrole
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Cluster.ClusterRestrictedInstanceGroup')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OverrideVpcConfig,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InstanceCount,

        [Parameter(Mandatory = $false)]
        $OnStartDeepHealthChecks,

        [Parameter(Mandatory = $true)]
        $EnvironmentConfig,

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
        $InstanceGroupName,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.Cluster.ClusterInstanceStorageConfig"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InstanceStorageConfigs,

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
        $CurrentCount,

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
        $TrainingPlanArn,

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
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ThreadsPerCore,

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
        $ExecutionRole

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Cluster.ClusterRestrictedInstanceGroup'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
