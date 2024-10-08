function Add-VSEMRClusterInstanceFleetResizingSpecifications {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.InstanceFleetResizingSpecifications resource property to the template.

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.InstanceFleetResizingSpecifications resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetresizingspecifications.html

    .PARAMETER OnDemandResizeSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetresizingspecifications.html#cfn-elasticmapreduce-cluster-instancefleetresizingspecifications-ondemandresizespecification
        Type: OnDemandResizingSpecification
        UpdateType: Mutable

    .PARAMETER SpotResizeSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetresizingspecifications.html#cfn-elasticmapreduce-cluster-instancefleetresizingspecifications-spotresizespecification
        Type: SpotResizingSpecification
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EMR.Cluster.InstanceFleetResizingSpecifications')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OnDemandResizeSpecification,

        [Parameter(Mandatory = $false)]
        $SpotResizeSpecification

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.InstanceFleetResizingSpecifications'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
