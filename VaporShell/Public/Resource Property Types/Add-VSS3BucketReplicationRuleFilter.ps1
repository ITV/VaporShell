function Add-VSS3BucketReplicationRuleFilter {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.ReplicationRuleFilter resource property to the template. A filter that identifies the subset of objects to which the replication rule applies. A Filter must specify exactly one Prefix, TagFilter, or an And child element.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.ReplicationRuleFilter resource property to the template.
A filter that identifies the subset of objects to which the replication rule applies. A Filter must specify exactly one Prefix, TagFilter, or an And child element.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html

    .PARAMETER And
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html#cfn-s3-bucket-replicationrulefilter-and
        Type: ReplicationRuleAndOperator
        UpdateType: Mutable

    .PARAMETER Prefix
        An object key name prefix that identifies the subset of objects to which the rule applies.
Replacement must be made for object keys containing special characters such as carriage returns when using XML requests. For more information, see  XML related object key constraints: https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html#cfn-s3-bucket-replicationrulefilter-prefix
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER TagFilter
        A container for specifying a tag key and value.
The rule applies only to objects that have the tag in their tag set.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrulefilter.html#cfn-s3-bucket-replicationrulefilter-tagfilter
        Type: TagFilter
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.ReplicationRuleFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $And,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Prefix,
        [parameter(Mandatory = $false)]
        $TagFilter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.ReplicationRuleFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
