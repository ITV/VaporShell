function Add-VSECSCapacityProviderManagedInstancesProvider {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::CapacityProvider.ManagedInstancesProvider resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::CapacityProvider.ManagedInstancesProvider resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html

    .PARAMETER InfrastructureRoleArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html#cfn-ecs-capacityprovider-managedinstancesprovider-infrastructurerolearn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER PropagateTags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html#cfn-ecs-capacityprovider-managedinstancesprovider-propagatetags
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InfrastructureOptimization
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html#cfn-ecs-capacityprovider-managedinstancesprovider-infrastructureoptimization
        UpdateType: Mutable
        Type: InfrastructureOptimization

    .PARAMETER InstanceLaunchTemplate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedinstancesprovider.html#cfn-ecs-capacityprovider-managedinstancesprovider-instancelaunchtemplate
        UpdateType: Mutable
        Type: InstanceLaunchTemplate

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.CapacityProvider.ManagedInstancesProvider')]
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
        $InfrastructureRoleArn,

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
        $PropagateTags,

        [Parameter(Mandatory = $false)]
        $InfrastructureOptimization,

        [Parameter(Mandatory = $true)]
        $InstanceLaunchTemplate

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.CapacityProvider.ManagedInstancesProvider'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
