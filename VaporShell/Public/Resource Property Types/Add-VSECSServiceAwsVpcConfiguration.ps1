function Add-VSECSServiceAwsVpcConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::Service.AwsVpcConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::ECS::Service.AwsVpcConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html

    .PARAMETER SecurityGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-securitygroups
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Subnets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-subnets
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AssignPublicIp
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-assignpublicip
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.Service.AwsVpcConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecurityGroups,
        [parameter(Mandatory = $false)]
        $Subnets,
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
        $AssignPublicIp
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.Service.AwsVpcConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
