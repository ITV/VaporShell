function Add-VSAppMeshVirtualNodeVirtualNodeSpec {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.VirtualNodeSpec resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.VirtualNodeSpec resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html

    .PARAMETER Logging
        Type: Logging
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-logging
        UpdateType: Mutable

    .PARAMETER Backends
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backends
        ItemType: Backend
        UpdateType: Mutable

    .PARAMETER Listeners
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-listeners
        ItemType: Listener
        UpdateType: Mutable

    .PARAMETER BackendDefaults
        Type: BackendDefaults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backenddefaults
        UpdateType: Mutable

    .PARAMETER ServiceDiscovery
        Type: ServiceDiscovery
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-servicediscovery
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.VirtualNodeSpec')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Logging,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppMesh.VirtualNode.Backend"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Backends,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AppMesh.VirtualNode.Listener"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Listeners,

        [Parameter(Mandatory = $false)]
        $BackendDefaults,

        [Parameter(Mandatory = $false)]
        $ServiceDiscovery

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.VirtualNodeSpec'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
