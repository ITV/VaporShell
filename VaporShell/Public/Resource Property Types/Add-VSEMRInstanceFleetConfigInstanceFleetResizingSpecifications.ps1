function Add-VSEMRInstanceFleetConfigInstanceFleetResizingSpecifications {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetResizingSpecifications resource property to the template. 

    .DESCRIPTION
        Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetResizingSpecifications resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetresizingspecifications.html

    .PARAMETER OnDemandResizeSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetresizingspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetresizingspecifications-ondemandresizespecification
        Type: OnDemandResizingSpecification
        UpdateType: Mutable

    .PARAMETER SpotResizeSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetresizingspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetresizingspecifications-spotresizespecification
        Type: SpotResizingSpecification
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceFleetResizingSpecifications')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OnDemandResizeSpecification,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceFleetResizingSpecifications'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
