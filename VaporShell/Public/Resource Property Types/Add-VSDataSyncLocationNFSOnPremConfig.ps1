function Add-VSDataSyncLocationNFSOnPremConfig {
    <#
    .SYNOPSIS
        Adds an AWS::DataSync::LocationNFS.OnPremConfig resource property to the template. A list of Amazon Resource Names (ARNs of agents to use for a Network File System (NFS location.

    .DESCRIPTION
        Adds an AWS::DataSync::LocationNFS.OnPremConfig resource property to the template.
A list of Amazon Resource Names (ARNs of agents to use for a Network File System (NFS location.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationnfs-onpremconfig.html

    .PARAMETER AgentArns
        ARNs of the agents to use for an NFS location.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationnfs-onpremconfig.html#cfn-datasync-locationnfs-onpremconfig-agentarns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataSync.LocationNFS.OnPremConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $AgentArns
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataSync.LocationNFS.OnPremConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
