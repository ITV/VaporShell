function Add-VSS3BucketBlockedEncryptionTypes {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.BlockedEncryptionTypes resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.BlockedEncryptionTypes resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-blockedencryptiontypes.html

    .PARAMETER EncryptionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-blockedencryptiontypes.html#cfn-s3-bucket-blockedencryptiontypes-encryptiontype
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3.Bucket.BlockedEncryptionTypes')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EncryptionType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.BlockedEncryptionTypes'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
