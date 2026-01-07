function Add-VSElasticLoadBalancingV2ListenerRuleRewriteConfigObject {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RewriteConfigObject resource property to the template.

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.RewriteConfigObject resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rewriteconfigobject.html

    .PARAMETER Rewrites
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rewriteconfigobject.html#cfn-elasticloadbalancingv2-listenerrule-rewriteconfigobject-rewrites
        UpdateType: Mutable
        Type: List
        ItemType: RewriteConfig
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RewriteConfigObject')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RewriteConfig"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Rewrites

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.RewriteConfigObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
