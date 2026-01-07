function Add-VSApiGatewayV2RoutingRuleMatchBasePaths {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGatewayV2::RoutingRule.MatchBasePaths resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApiGatewayV2::RoutingRule.MatchBasePaths resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchbasepaths.html

    .PARAMETER AnyOf
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchbasepaths.html#cfn-apigatewayv2-routingrule-matchbasepaths-anyof
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApiGatewayV2.RoutingRule.MatchBasePaths')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $AnyOf

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGatewayV2.RoutingRule.MatchBasePaths'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
