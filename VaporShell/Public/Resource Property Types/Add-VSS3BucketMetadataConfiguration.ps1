function Add-VSS3BucketMetadataConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.MetadataConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.MetadataConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html

    .PARAMETER Destination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html#cfn-s3-bucket-metadataconfiguration-destination
        UpdateType: Mutable
        Type: MetadataDestination

    .PARAMETER JournalTableConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html#cfn-s3-bucket-metadataconfiguration-journaltableconfiguration
        UpdateType: Mutable
        Type: JournalTableConfiguration

    .PARAMETER InventoryTableConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html#cfn-s3-bucket-metadataconfiguration-inventorytableconfiguration
        UpdateType: Mutable
        Type: InventoryTableConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3.Bucket.MetadataConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Destination,

        [Parameter(Mandatory = $true)]
        $JournalTableConfiguration,

        [Parameter(Mandatory = $false)]
        $InventoryTableConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.MetadataConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
