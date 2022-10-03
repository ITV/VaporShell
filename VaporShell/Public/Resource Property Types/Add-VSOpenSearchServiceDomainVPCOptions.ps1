function Add-VSOpenSearchServiceDomainVPCOptions {
    <#
    .SYNOPSIS
        Adds an AWS::OpenSearchService::Domain.VPCOptions resource property to the template. The virtual private cloud (VPC configuration for the OpenSearch Service domain. For more information, see Launching your Amazon OpenSearch Service domains using a VPC: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html in the *Amazon OpenSearch Service Developer Guide*.

    .DESCRIPTION
        Adds an AWS::OpenSearchService::Domain.VPCOptions resource property to the template.
The virtual private cloud (VPC configuration for the OpenSearch Service domain. For more information, see Launching your Amazon OpenSearch Service domains using a VPC: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html in the *Amazon OpenSearch Service Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-vpcoptions.html

    .PARAMETER SecurityGroupIds
        The list of security group IDs that are associated with the VPC endpoints for the domain. If you don't provide a security group ID, OpenSearch Service uses the default security group for the VPC. To learn more, see Security groups for your VPC : https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html in the *Amazon VPC User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-vpcoptions.html#cfn-opensearchservice-domain-vpcoptions-securitygroupids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER SubnetIds
        Provide one subnet ID for each Availability Zone that your domain uses. For example, you must specify three subnet IDs for a three Availability Zone domain. To learn more, see VPCs and subnets: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html in the *Amazon VPC User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-vpcoptions.html#cfn-opensearchservice-domain-vpcoptions-subnetids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpenSearchService.Domain.VPCOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecurityGroupIds,
        [parameter(Mandatory = $false)]
        $SubnetIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpenSearchService.Domain.VPCOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
