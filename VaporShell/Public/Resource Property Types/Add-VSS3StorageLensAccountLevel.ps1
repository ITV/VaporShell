function Add-VSS3StorageLensAccountLevel {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.AccountLevel resource property to the template. This resource contains the details of the account-level metrics for Amazon S3 Storage Lens.

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.AccountLevel resource property to the template.
This resource contains the details of the account-level metrics for Amazon S3 Storage Lens.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html

    .PARAMETER ActivityMetrics
        This property contains the details of the account-level activity metrics for Amazon S3 Storage Lens.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-activitymetrics
        UpdateType: Mutable
        Type: ActivityMetrics

    .PARAMETER BucketLevel
        This property contains the details of the account-level bucket-level configurations for Amazon S3 Storage Lens.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-accountlevel.html#cfn-s3-storagelens-accountlevel-bucketlevel
        UpdateType: Mutable
        Type: BucketLevel

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLens.AccountLevel')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ActivityMetrics,
        [parameter(Mandatory = $true)]
        $BucketLevel
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
