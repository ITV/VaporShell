function Add-VSApiGatewayV2RoutingRuleCondition {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGatewayV2::RoutingRule.Condition resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApiGatewayV2::RoutingRule.Condition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-condition.html

    .PARAMETER MatchBasePaths
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-condition.html#cfn-apigatewayv2-routingrule-condition-matchbasepaths
        UpdateType: Mutable
        Type: MatchBasePaths

    .PARAMETER MatchHeaders
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-condition.html#cfn-apigatewayv2-routingrule-condition-matchheaders
        UpdateType: Mutable
        Type: MatchHeaders

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApiGatewayV2.RoutingRule.Condition')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MatchBasePaths,

        [Parameter(Mandatory = $false)]
        $MatchHeaders

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGatewayV2.RoutingRule.Condition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
