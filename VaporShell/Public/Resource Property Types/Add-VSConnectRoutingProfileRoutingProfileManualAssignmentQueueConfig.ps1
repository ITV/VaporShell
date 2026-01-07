function Add-VSConnectRoutingProfileRoutingProfileManualAssignmentQueueConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::RoutingProfile.RoutingProfileManualAssignmentQueueConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::RoutingProfile.RoutingProfileManualAssignmentQueueConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilemanualassignmentqueueconfig.html

    .PARAMETER QueueReference
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-routingprofilemanualassignmentqueueconfig.html#cfn-connect-routingprofile-routingprofilemanualassignmentqueueconfig-queuereference
        UpdateType: Mutable
        Type: RoutingProfileQueueReference

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.RoutingProfile.RoutingProfileManualAssignmentQueueConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $QueueReference

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.RoutingProfile.RoutingProfileManualAssignmentQueueConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
