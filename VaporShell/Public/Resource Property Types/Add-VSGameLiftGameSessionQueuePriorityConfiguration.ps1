function Add-VSGameLiftGameSessionQueuePriorityConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::GameLift::GameSessionQueue.PriorityConfiguration resource property to the template. Custom prioritization settings for use by a game session queue when placing new game sessions with available game servers. When defined, this configuration replaces the default FleetIQ prioritization process, which is as follows:

    .DESCRIPTION
        Adds an AWS::GameLift::GameSessionQueue.PriorityConfiguration resource property to the template.
Custom prioritization settings for use by a game session queue when placing new game sessions with available game servers. When defined, this configuration replaces the default FleetIQ prioritization process, which is as follows:

+ If player latency data is included in a game session request, destinations and locations are prioritized first based on lowest average latency (1, then on lowest hosting cost (2, then on destination list order (3, and finally on location (alphabetical (4. This approach ensures that the queue's top priority is to place game sessions where average player latency is lowest, and--if latency is the same--where the hosting cost is less, etc.

+ If player latency data is not included, destinations and locations are prioritized first on destination list order (1, and then on location (alphabetical (2. This approach ensures that the queue's top priority is to place game sessions on the first destination fleet listed. If that fleet has multiple locations, the game session is placed on the first location (when listed alphabetically.

Changing the priority order will affect how game sessions are placed.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-priorityconfiguration.html

    .PARAMETER PriorityOrder
        The recommended sequence to use when prioritizing where to place new game sessions. Each type can only be listed once.
+  LATENCY -- FleetIQ prioritizes locations where the average player latency provided in each game session request is lowest.
+  COST -- FleetIQ prioritizes destinations with the lowest current hosting costs. Cost is evaluated based on the location, instance type, and fleet type Spot or On-Demand for each destination in the queue.
+  DESTINATION -- FleetIQ prioritizes based on the order that destinations are listed in the queue configuration.
+  LOCATION -- FleetIQ prioritizes based on the provided order of locations, as defined in LocationOrder.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-priorityconfiguration.html#cfn-gamelift-gamesessionqueue-priorityconfiguration-priorityorder
        UpdateType: Mutable

    .PARAMETER LocationOrder
        The prioritization order to use for fleet locations, when the PriorityOrder property includes LOCATION. Locations are identified by AWS Region codes such as us-west-2. Each location can only be listed once.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-priorityconfiguration.html#cfn-gamelift-gamesessionqueue-priorityconfiguration-locationorder
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GameLift.GameSessionQueue.PriorityConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PriorityOrder,
        [parameter(Mandatory = $false)]
        $LocationOrder
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GameLift.GameSessionQueue.PriorityConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
