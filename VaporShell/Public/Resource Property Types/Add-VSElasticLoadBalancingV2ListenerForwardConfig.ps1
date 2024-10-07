function Add-VSElasticLoadBalancingV2ListenerForwardConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::Listener.ForwardConfig resource property to the template. 

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::Listener.ForwardConfig resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html

    .PARAMETER TargetGroupStickinessConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html#cfn-elasticloadbalancingv2-listener-forwardconfig-targetgroupstickinessconfig
        UpdateType: Mutable
        Type: TargetGroupStickinessConfig

    .PARAMETER TargetGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html#cfn-elasticloadbalancingv2-listener-forwardconfig-targetgroups
        UpdateType: Mutable
        Type: List
        ItemType: TargetGroupTuple
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.Listener.ForwardConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TargetGroupStickinessConfig,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ElasticLoadBalancingV2.Listener.TargetGroupTuple"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TargetGroups
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.Listener.ForwardConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
