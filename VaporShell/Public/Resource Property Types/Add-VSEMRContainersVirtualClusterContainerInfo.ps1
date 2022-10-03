function Add-VSEMRContainersVirtualClusterContainerInfo {
    <#
    .SYNOPSIS
        Adds an AWS::EMRContainers::VirtualCluster.ContainerInfo resource property to the template. The information about the container used for a job run or a managed endpoint.

    .DESCRIPTION
        Adds an AWS::EMRContainers::VirtualCluster.ContainerInfo resource property to the template.
The information about the container used for a job run or a managed endpoint.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerinfo.html

    .PARAMETER EksInfo
        The information about the EKS cluster.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerinfo.html#cfn-emrcontainers-virtualcluster-containerinfo-eksinfo
        UpdateType: Immutable
        Type: EksInfo

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMRContainers.VirtualCluster.ContainerInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $EksInfo
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMRContainers.VirtualCluster.ContainerInfo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
