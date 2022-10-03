function Add-VSAppMeshVirtualNodeTcpTimeout {
    <#
    .SYNOPSIS
        Adds an AWS::AppMesh::VirtualNode.TcpTimeout resource property to the template. An object that represents types of timeouts.

    .DESCRIPTION
        Adds an AWS::AppMesh::VirtualNode.TcpTimeout resource property to the template.
An object that represents types of timeouts.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tcptimeout.html

    .PARAMETER Idle
        An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.

        Type: Duration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tcptimeout.html#cfn-appmesh-virtualnode-tcptimeout-idle
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppMesh.VirtualNode.TcpTimeout')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Idle
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppMesh.VirtualNode.TcpTimeout'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
