function Add-VSARCRegionSwitchPlanExecutionBlockConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ARCRegionSwitch::Plan.ExecutionBlockConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::ARCRegionSwitch::Plan.ExecutionBlockConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html

    .PARAMETER GlobalAuroraConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-globalauroraconfig
        UpdateType: Mutable
        Type: GlobalAuroraConfiguration

    .PARAMETER Route53HealthCheckConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-route53healthcheckconfig
        UpdateType: Mutable
        Type: Route53HealthCheckConfiguration

    .PARAMETER ArcRoutingControlConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-arcroutingcontrolconfig
        UpdateType: Mutable
        Type: ArcRoutingControlConfiguration

    .PARAMETER DocumentDbConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-documentdbconfig
        UpdateType: Mutable
        Type: DocumentDbConfiguration

    .PARAMETER ParallelConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-parallelconfig
        UpdateType: Mutable
        Type: ParallelExecutionBlockConfiguration

    .PARAMETER EksResourceScalingConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-eksresourcescalingconfig
        UpdateType: Mutable
        Type: EksResourceScalingConfiguration

    .PARAMETER EcsCapacityIncreaseConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-ecscapacityincreaseconfig
        UpdateType: Mutable
        Type: EcsCapacityIncreaseConfiguration

    .PARAMETER CustomActionLambdaConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-customactionlambdaconfig
        UpdateType: Mutable
        Type: CustomActionLambdaConfiguration

    .PARAMETER ExecutionApprovalConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-executionapprovalconfig
        UpdateType: Mutable
        Type: ExecutionApprovalConfiguration

    .PARAMETER Ec2AsgCapacityIncreaseConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-ec2asgcapacityincreaseconfig
        UpdateType: Mutable
        Type: Ec2AsgCapacityIncreaseConfiguration

    .PARAMETER RegionSwitchPlanConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-executionblockconfiguration.html#cfn-arcregionswitch-plan-executionblockconfiguration-regionswitchplanconfig
        UpdateType: Mutable
        Type: RegionSwitchPlanConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ARCRegionSwitch.Plan.ExecutionBlockConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $GlobalAuroraConfig,

        [Parameter(Mandatory = $false)]
        $Route53HealthCheckConfig,

        [Parameter(Mandatory = $false)]
        $ArcRoutingControlConfig,

        [Parameter(Mandatory = $false)]
        $DocumentDbConfig,

        [Parameter(Mandatory = $false)]
        $ParallelConfig,

        [Parameter(Mandatory = $false)]
        $EksResourceScalingConfig,

        [Parameter(Mandatory = $false)]
        $EcsCapacityIncreaseConfig,

        [Parameter(Mandatory = $false)]
        $CustomActionLambdaConfig,

        [Parameter(Mandatory = $false)]
        $ExecutionApprovalConfig,

        [Parameter(Mandatory = $false)]
        $Ec2AsgCapacityIncreaseConfig,

        [Parameter(Mandatory = $false)]
        $RegionSwitchPlanConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ARCRegionSwitch.Plan.ExecutionBlockConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
