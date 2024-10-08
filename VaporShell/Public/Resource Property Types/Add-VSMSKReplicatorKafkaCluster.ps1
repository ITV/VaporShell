function Add-VSMSKReplicatorKafkaCluster {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Replicator.KafkaCluster resource property to the template.

    .DESCRIPTION
        Adds an AWS::MSK::Replicator.KafkaCluster resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkacluster.html

    .PARAMETER VpcConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkacluster.html#cfn-msk-replicator-kafkacluster-vpcconfig
        UpdateType: Immutable
        Type: KafkaClusterClientVpcConfig

    .PARAMETER AmazonMskCluster
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkacluster.html#cfn-msk-replicator-kafkacluster-amazonmskcluster
        UpdateType: Immutable
        Type: AmazonMskCluster

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MSK.Replicator.KafkaCluster')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $VpcConfig,

        [Parameter(Mandatory = $true)]
        $AmazonMskCluster

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Replicator.KafkaCluster'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
