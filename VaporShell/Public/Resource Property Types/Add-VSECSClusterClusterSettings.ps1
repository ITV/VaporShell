function Add-VSECSClusterClusterSettings {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::Cluster.ClusterSettings resource property to the template. The settings to use when creating a cluster. This parameter is used to turn on CloudWatch Container Insights for a cluster.

    .DESCRIPTION
        Adds an AWS::ECS::Cluster.ClusterSettings resource property to the template.
The settings to use when creating a cluster. This parameter is used to turn on CloudWatch Container Insights for a cluster.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html

    .PARAMETER Value
        The value to set for the cluster setting. The supported values are enabled and disabled. If enabled is specified, CloudWatch Container Insights will be enabled for the cluster, otherwise it will be disabled unless the containerInsights account setting is enabled. If a cluster value is specified, it will override the containerInsights value set with PutAccountSetting: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html or PutAccountSettingDefault: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html#cfn-ecs-cluster-clustersettings-value
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Name
        The name of the cluster setting. The only supported value is containerInsights.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html#cfn-ecs-cluster-clustersettings-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.Cluster.ClusterSettings')]
    [cmdletbinding()]
    Param
    (
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
        $Value,
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.Cluster.ClusterSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
