function Add-VSECSServiceServiceConnectTestTrafficRules {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::Service.ServiceConnectTestTrafficRules resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::Service.ServiceConnectTestTrafficRules resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrules.html

    .PARAMETER Header
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttesttrafficrules.html#cfn-ecs-service-serviceconnecttesttrafficrules-header
        UpdateType: Mutable
        Type: ServiceConnectTestTrafficRulesHeader

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.Service.ServiceConnectTestTrafficRules')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Header

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.Service.ServiceConnectTestTrafficRules'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
