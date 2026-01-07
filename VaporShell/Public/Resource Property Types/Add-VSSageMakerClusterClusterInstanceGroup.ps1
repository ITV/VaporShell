function Add-VSSageMakerClusterClusterInstanceGroup {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Cluster.ClusterInstanceGroup resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Cluster.ClusterInstanceGroup resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html

    .PARAMETER CapacityRequirements
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-capacityrequirements
        UpdateType: Mutable
        Type: ClusterCapacityRequirements

    .PARAMETER InstanceGroupName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancegroupname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InstanceStorageConfigs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancestorageconfigs
        UpdateType: Mutable
        Type: List
        ItemType: ClusterInstanceStorageConfig
        DuplicatesAllowed: True

    .PARAMETER KubernetesConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-kubernetesconfig
        UpdateType: Mutable
        Type: ClusterKubernetesConfig

    .PARAMETER LifeCycleConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-lifecycleconfig
        UpdateType: Mutable
        Type: ClusterLifeCycleConfig

    .PARAMETER TrainingPlanArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-trainingplanarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ThreadsPerCore
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-threadspercore
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER OverrideVpcConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-overridevpcconfig
        UpdateType: Mutable
        Type: VpcConfig

    .PARAMETER InstanceCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancecount
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER OnStartDeepHealthChecks
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-onstartdeephealthchecks
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ImageId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-imageid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CurrentCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-currentcount
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER ScheduledUpdateConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-scheduledupdateconfig
        UpdateType: Mutable
        Type: ScheduledUpdateConfig

    .PARAMETER InstanceType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-instancetype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ExecutionRole
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-executionrole
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MinInstanceCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancegroup.html#cfn-sagemaker-cluster-clusterinstancegroup-mininstancecount
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Cluster.ClusterInstanceGroup')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CapacityRequirements,

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
        $KubernetesConfig,

        [Parameter(Mandatory = $true)]
        $LifeCycleConfig,

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
        $ImageId,

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
        $ScheduledUpdateConfig,

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
        $ExecutionRole,

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
        $MinInstanceCount

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Cluster.ClusterInstanceGroup'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
