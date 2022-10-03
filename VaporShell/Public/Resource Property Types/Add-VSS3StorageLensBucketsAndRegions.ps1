function Add-VSS3StorageLensBucketsAndRegions {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.BucketsAndRegions resource property to the template. This resource contains the details of the buckets and Regions for the Amazon S3 Storage Lens configuration.

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.BucketsAndRegions resource property to the template.
This resource contains the details of the buckets and Regions for the Amazon S3 Storage Lens configuration.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketsandregions.html

    .PARAMETER Buckets
        This property contains the details of the buckets for the Amazon S3 Storage Lens configuration. This should be the bucket Amazon Resource NameARN. For valid values, see Buckets ARN format here: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_Include.html#API_control_Include_Contents in the *Amazon S3 API Reference*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketsandregions.html#cfn-s3-storagelens-bucketsandregions-buckets
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Regions
        This property contains the details of the Regions for the S3 Storage Lens configuration.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-bucketsandregions.html#cfn-s3-storagelens-bucketsandregions-regions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLens.BucketsAndRegions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Buckets,
        [parameter(Mandatory = $false)]
        $Regions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLens.BucketsAndRegions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
