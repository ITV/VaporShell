function Add-VSECSExpressGatewayServiceExpressGatewayServiceNetworkConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::ExpressGatewayService.ExpressGatewayServiceNetworkConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::ExpressGatewayService.ExpressGatewayServiceNetworkConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewayservicenetworkconfiguration.html

    .PARAMETER SecurityGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewayservicenetworkconfiguration.html#cfn-ecs-expressgatewayservice-expressgatewayservicenetworkconfiguration-securitygroups
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Subnets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewayservicenetworkconfiguration.html#cfn-ecs-expressgatewayservice-expressgatewayservicenetworkconfiguration-subnets
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.ExpressGatewayService.ExpressGatewayServiceNetworkConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SecurityGroups,

        [Parameter(Mandatory = $false)]
        $Subnets

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.ExpressGatewayService.ExpressGatewayServiceNetworkConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
