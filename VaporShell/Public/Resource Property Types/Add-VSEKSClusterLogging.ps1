function Add-VSEKSClusterLogging {
    <#
    .SYNOPSIS
        Adds an AWS::EKS::Cluster.Logging resource property to the template. Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster control plane logs: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html in the * *Amazon EKS User Guide* *.

    .DESCRIPTION
        Adds an AWS::EKS::Cluster.Logging resource property to the template.
Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster control plane logs: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html in the * *Amazon EKS User Guide* *.

**Important**

When updating a resource, you must include this Logging property if the previous CloudFormation template of the resource had it.

**Note**

CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see CloudWatch Pricing: http://aws.amazon.com/cloudwatch/pricing/.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-logging.html

    .PARAMETER ClusterLogging
        The cluster control plane logging configuration for your cluster.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-logging.html#cfn-eks-cluster-logging-clusterlogging
        UpdateType: Mutable
        Type: ClusterLogging

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EKS.Cluster.Logging')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ClusterLogging
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EKS.Cluster.Logging'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
