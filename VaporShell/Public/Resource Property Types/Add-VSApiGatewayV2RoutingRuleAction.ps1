function Add-VSApiGatewayV2RoutingRuleAction {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGatewayV2::RoutingRule.Action resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApiGatewayV2::RoutingRule.Action resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-action.html

    .PARAMETER InvokeApi
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-action.html#cfn-apigatewayv2-routingrule-action-invokeapi
        UpdateType: Mutable
        Type: ActionInvokeApi

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApiGatewayV2.RoutingRule.Action')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $InvokeApi

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGatewayV2.RoutingRule.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
