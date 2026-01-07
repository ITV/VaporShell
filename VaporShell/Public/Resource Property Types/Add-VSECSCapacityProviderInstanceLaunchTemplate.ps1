function Add-VSECSCapacityProviderInstanceLaunchTemplate {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::CapacityProvider.InstanceLaunchTemplate resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::CapacityProvider.InstanceLaunchTemplate resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html

    .PARAMETER Ec2InstanceProfileArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-ec2instanceprofilearn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CapacityOptionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-capacityoptiontype
        UpdateType: Conditional
        PrimitiveType: String

    .PARAMETER StorageConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-storageconfiguration
        UpdateType: Mutable
        Type: ManagedInstancesStorageConfiguration

    .PARAMETER NetworkConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-networkconfiguration
        UpdateType: Mutable
        Type: ManagedInstancesNetworkConfiguration

    .PARAMETER InstanceRequirements
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-instancerequirements
        UpdateType: Mutable
        Type: InstanceRequirementsRequest

    .PARAMETER Monitoring
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-instancelaunchtemplate.html#cfn-ecs-capacityprovider-instancelaunchtemplate-monitoring
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.CapacityProvider.InstanceLaunchTemplate')]
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
        $Ec2InstanceProfileArn,

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
        $CapacityOptionType,

        [Parameter(Mandatory = $false)]
        $StorageConfiguration,

        [Parameter(Mandatory = $true)]
        $NetworkConfiguration,

        [Parameter(Mandatory = $false)]
        $InstanceRequirements,

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
        $Monitoring

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.CapacityProvider.InstanceLaunchTemplate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
