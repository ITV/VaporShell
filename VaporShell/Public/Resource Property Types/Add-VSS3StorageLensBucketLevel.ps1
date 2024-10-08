function Add-VSS3StorageLensBucketLevel {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.BucketLevel resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.BucketLevel resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html

    .PARAMETER AdvancedDataProtectionMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html#cfn-s3-storagelens-bucketlevel-advanceddataprotectionmetrics
        UpdateType: Mutable
        Type: AdvancedDataProtectionMetrics

    .PARAMETER PrefixLevel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html#cfn-s3-storagelens-bucketlevel-prefixlevel
        UpdateType: Mutable
        Type: PrefixLevel

    .PARAMETER ActivityMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html#cfn-s3-storagelens-bucketlevel-activitymetrics
        UpdateType: Mutable
        Type: ActivityMetrics

    .PARAMETER AdvancedCostOptimizationMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html#cfn-s3-storagelens-bucketlevel-advancedcostoptimizationmetrics
        UpdateType: Mutable
        Type: AdvancedCostOptimizationMetrics

    .PARAMETER DetailedStatusCodesMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketlevel.html#cfn-s3-storagelens-bucketlevel-detailedstatuscodesmetrics
        UpdateType: Mutable
        Type: DetailedStatusCodesMetrics

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3.StorageLens.BucketLevel')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AdvancedDataProtectionMetrics,

        [Parameter(Mandatory = $false)]
        $PrefixLevel,

        [Parameter(Mandatory = $false)]
        $ActivityMetrics,

        [Parameter(Mandatory = $false)]
        $AdvancedCostOptimizationMetrics,

        [Parameter(Mandatory = $false)]
        $DetailedStatusCodesMetrics

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
