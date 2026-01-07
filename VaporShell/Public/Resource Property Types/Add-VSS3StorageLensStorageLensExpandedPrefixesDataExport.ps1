function Add-VSS3StorageLensStorageLensExpandedPrefixesDataExport {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.StorageLensExpandedPrefixesDataExport resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.StorageLensExpandedPrefixesDataExport resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensexpandedprefixesdataexport.html

    .PARAMETER StorageLensTableDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensexpandedprefixesdataexport.html#cfn-s3-storagelens-storagelensexpandedprefixesdataexport-storagelenstabledestination
        UpdateType: Mutable
        Type: StorageLensTableDestination

    .PARAMETER S3BucketDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensexpandedprefixesdataexport.html#cfn-s3-storagelens-storagelensexpandedprefixesdataexport-s3bucketdestination
        UpdateType: Mutable
        Type: S3BucketDestination

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3.StorageLens.StorageLensExpandedPrefixesDataExport')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $StorageLensTableDestination,

        [Parameter(Mandatory = $false)]
        $S3BucketDestination

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLens.StorageLensExpandedPrefixesDataExport'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
