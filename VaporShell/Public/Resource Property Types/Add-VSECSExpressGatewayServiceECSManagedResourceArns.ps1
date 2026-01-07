function Add-VSECSExpressGatewayServiceECSManagedResourceArns {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::ExpressGatewayService.ECSManagedResourceArns resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::ExpressGatewayService.ECSManagedResourceArns resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-ecsmanagedresourcearns.html

    .PARAMETER LogGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-ecsmanagedresourcearns.html#cfn-ecs-expressgatewayservice-ecsmanagedresourcearns-loggroups
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ServiceSecurityGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-ecsmanagedresourcearns.html#cfn-ecs-expressgatewayservice-ecsmanagedresourcearns-servicesecuritygroups
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER MetricAlarms
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-ecsmanagedresourcearns.html#cfn-ecs-expressgatewayservice-ecsmanagedresourcearns-metricalarms
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER IngressPath
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-ecsmanagedresourcearns.html#cfn-ecs-expressgatewayservice-ecsmanagedresourcearns-ingresspath
        UpdateType: Mutable
        Type: IngressPathArns

    .PARAMETER AutoScaling
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-ecsmanagedresourcearns.html#cfn-ecs-expressgatewayservice-ecsmanagedresourcearns-autoscaling
        UpdateType: Mutable
        Type: AutoScalingArns

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.ExpressGatewayService.ECSManagedResourceArns')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LogGroups,

        [Parameter(Mandatory = $false)]
        $ServiceSecurityGroups,

        [Parameter(Mandatory = $false)]
        $MetricAlarms,

        [Parameter(Mandatory = $false)]
        $IngressPath,

        [Parameter(Mandatory = $false)]
        $AutoScaling

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.ExpressGatewayService.ECSManagedResourceArns'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
