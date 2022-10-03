function Add-VSDynamoDBGlobalTableReplicaGlobalSecondaryIndexSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::GlobalTable.ReplicaGlobalSecondaryIndexSpecification resource property to the template. Represents the properties of a global secondary index that can be set on a per-replica basis.

    .DESCRIPTION
        Adds an AWS::DynamoDB::GlobalTable.ReplicaGlobalSecondaryIndexSpecification resource property to the template.
Represents the properties of a global secondary index that can be set on a per-replica basis.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html

    .PARAMETER IndexName
        The name of the global secondary index. The name must be unique among all other indexes on this table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html#cfn-dynamodb-globaltable-replicaglobalsecondaryindexspecification-indexname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ContributorInsightsSpecification
        Updates the status for contributor insights for a specific table or index. CloudWatch Contributor Insights for DynamoDB graphs display the partition key and if applicable sort key of frequently accessed items and frequently throttled items in plaintext. If you require the use of AWS Key Management Service KMS to encrypt this table’s partition key and sort key data with an AWS managed key or customer managed key, you should not enable CloudWatch Contributor Insights for DynamoDB for this table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html#cfn-dynamodb-globaltable-replicaglobalsecondaryindexspecification-contributorinsightsspecification
        UpdateType: Mutable
        Type: ContributorInsightsSpecification

    .PARAMETER ReadProvisionedThroughputSettings
        Allows you to specify the read capacity settings for a replica global secondary index when the BillingMode is set to PROVISIONED.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html#cfn-dynamodb-globaltable-replicaglobalsecondaryindexspecification-readprovisionedthroughputsettings
        UpdateType: Mutable
        Type: ReadProvisionedThroughputSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.GlobalTable.ReplicaGlobalSecondaryIndexSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IndexName,
        [parameter(Mandatory = $false)]
        $ContributorInsightsSpecification,
        [parameter(Mandatory = $false)]
        $ReadProvisionedThroughputSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.GlobalTable.ReplicaGlobalSecondaryIndexSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
