function Add-VSS3StorageLensAccountLevel {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.AccountLevel resource property to the template. 

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.AccountLevel resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html

    .PARAMETER AdvancedDataProtectionMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-advanceddataprotectionmetrics
        UpdateType: Mutable
        Type: AdvancedDataProtectionMetrics

    .PARAMETER StorageLensGroupLevel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-storagelensgrouplevel
        UpdateType: Mutable
        Type: StorageLensGroupLevel

    .PARAMETER ActivityMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-activitymetrics
        UpdateType: Mutable
        Type: ActivityMetrics

    .PARAMETER BucketLevel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-bucketlevel
        UpdateType: Mutable
        Type: BucketLevel

    .PARAMETER AdvancedCostOptimizationMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-advancedcostoptimizationmetrics
        UpdateType: Mutable
        Type: AdvancedCostOptimizationMetrics

    .PARAMETER DetailedStatusCodesMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-detailedstatuscodesmetrics
        UpdateType: Mutable
        Type: DetailedStatusCodesMetrics

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLens.AccountLevel')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AdvancedDataProtectionMetrics,
        [parameter(Mandatory = $false)]
        $StorageLensGroupLevel,
        [parameter(Mandatory = $false)]
        $ActivityMetrics,
        [parameter(Mandatory = $true)]
        $BucketLevel,
        [parameter(Mandatory = $false)]
        $AdvancedCostOptimizationMetrics,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLens.AccountLevel'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
