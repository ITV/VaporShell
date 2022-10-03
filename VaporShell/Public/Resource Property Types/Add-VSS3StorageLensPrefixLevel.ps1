function Add-VSS3StorageLensPrefixLevel {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.PrefixLevel resource property to the template. This resource contains the details of the prefix-level of the Amazon S3 Storage Lens.

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.PrefixLevel resource property to the template.
This resource contains the details of the prefix-level of the Amazon S3 Storage Lens.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevel.html

    .PARAMETER StorageMetrics
        A property for the prefix-level storage metrics for Amazon S3 Storage Lens.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevel.html#cfn-s3-storagelens-prefixlevel-storagemetrics
        UpdateType: Mutable
        Type: PrefixLevelStorageMetrics

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLens.PrefixLevel')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $StorageMetrics
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLens.PrefixLevel'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
