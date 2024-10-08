function Add-VSGameLiftFleetContainerGroupsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::GameLift::Fleet.ContainerGroupsConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::GameLift::Fleet.ContainerGroupsConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-containergroupsconfiguration.html

    .PARAMETER ConnectionPortRange
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-containergroupsconfiguration.html#cfn-gamelift-fleet-containergroupsconfiguration-connectionportrange
        UpdateType: Immutable
        Type: ConnectionPortRange

    .PARAMETER ContainerGroupDefinitionNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-containergroupsconfiguration.html#cfn-gamelift-fleet-containergroupsconfiguration-containergroupdefinitionnames
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ContainerGroupsPerInstance
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-containergroupsconfiguration.html#cfn-gamelift-fleet-containergroupsconfiguration-containergroupsperinstance
        UpdateType: Immutable
        Type: ContainerGroupsPerInstance

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GameLift.Fleet.ContainerGroupsConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ConnectionPortRange,
        [parameter(Mandatory = $true)]
        $ContainerGroupDefinitionNames,
        [parameter(Mandatory = $false)]
        $ContainerGroupsPerInstance
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GameLift.Fleet.ContainerGroupsConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
