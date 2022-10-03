function Add-VSS3StorageLensBucketLevel {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.BucketLevel resource property to the template. A property for the bucket-level storage metrics for Amazon S3 Storage Lens.

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.BucketLevel resource property to the template.
A property for the bucket-level storage metrics for Amazon S3 Storage Lens.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html

    .PARAMETER ActivityMetrics
        A property for the bucket-level activity metrics for Amazon S3 Storage Lens.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html#cfn-s3-storagelens-bucketlevel-activitymetrics
        UpdateType: Mutable
        Type: ActivityMetrics

    .PARAMETER PrefixLevel
        A property for the bucket-level prefix-level storage metrics for S3 Storage Lens.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html#cfn-s3-storagelens-bucketlevel-prefixlevel
        UpdateType: Mutable
        Type: PrefixLevel

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLens.BucketLevel')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ActivityMetrics,
        [parameter(Mandatory = $false)]
        $PrefixLevel
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLens.BucketLevel'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
