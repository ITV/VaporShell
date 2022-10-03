function Add-VSDynamoDBGlobalTableGlobalSecondaryIndex {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::GlobalTable.GlobalSecondaryIndex resource property to the template. Allows you to specify a global secondary index for the global table. The index will be defined on all replicas.

    .DESCRIPTION
        Adds an AWS::DynamoDB::GlobalTable.GlobalSecondaryIndex resource property to the template.
Allows you to specify a global secondary index for the global table. The index will be defined on all replicas.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html

    .PARAMETER IndexName
        The name of the global secondary index. The name must be unique among all other indexes on this table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-indexname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER KeySchema
        The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:
+  HASH - partition key
+  RANGE - sort key
The partition key of an item is also known as its *hash attribute*. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
The sort key of an item is also known as its *range attribute*. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-keyschema
        UpdateType: Mutable
        Type: List
        ItemType: KeySchema
        DuplicatesAllowed: False

    .PARAMETER Projection
        Represents attributes that are copied projected from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-projection
        UpdateType: Mutable
        Type: Projection

    .PARAMETER WriteProvisionedThroughputSettings
        Defines write capacity settings for the global secondary index. You must specify a value for this property if the table's BillingMode is PROVISIONED. All replicas will have the same write capacity settings for this global secondary index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-writeprovisionedthroughputsettings
        UpdateType: Mutable
        Type: WriteProvisionedThroughputSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.GlobalTable.GlobalSecondaryIndex')]
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
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DynamoDB.GlobalTable.KeySchema"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KeySchema,
        [parameter(Mandatory = $true)]
        $Projection,
        [parameter(Mandatory = $false)]
        $WriteProvisionedThroughputSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.GlobalTable.GlobalSecondaryIndex'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
