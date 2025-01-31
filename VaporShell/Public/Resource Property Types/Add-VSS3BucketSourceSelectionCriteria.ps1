function Add-VSS3BucketSourceSelectionCriteria {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.SourceSelectionCriteria resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.SourceSelectionCriteria resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html

    .PARAMETER ReplicaModifications
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html#cfn-s3-bucket-sourceselectioncriteria-replicamodifications
        UpdateType: Mutable
        Type: ReplicaModifications

    .PARAMETER SseKmsEncryptedObjects
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html#cfn-s3-bucket-sourceselectioncriteria-ssekmsencryptedobjects
        UpdateType: Mutable
        Type: SseKmsEncryptedObjects

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3.Bucket.SourceSelectionCriteria')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ReplicaModifications,

        [Parameter(Mandatory = $false)]
        $SseKmsEncryptedObjects

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.SourceSelectionCriteria'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
