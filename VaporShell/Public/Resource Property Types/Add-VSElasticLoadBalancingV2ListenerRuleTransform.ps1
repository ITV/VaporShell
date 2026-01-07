function Add-VSElasticLoadBalancingV2ListenerRuleTransform {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.Transform resource property to the template.

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::ListenerRule.Transform resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html

    .PARAMETER Type
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html#cfn-elasticloadbalancingv2-listenerrule-transform-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER UrlRewriteConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html#cfn-elasticloadbalancingv2-listenerrule-transform-urlrewriteconfig
        UpdateType: Mutable
        Type: RewriteConfigObject

    .PARAMETER HostHeaderRewriteConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-transform.html#cfn-elasticloadbalancingv2-listenerrule-transform-hostheaderrewriteconfig
        UpdateType: Mutable
        Type: RewriteConfigObject

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.Transform')]
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
        $Type,

        [Parameter(Mandatory = $false)]
        $UrlRewriteConfig,

        [Parameter(Mandatory = $false)]
        $HostHeaderRewriteConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.Transform'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
