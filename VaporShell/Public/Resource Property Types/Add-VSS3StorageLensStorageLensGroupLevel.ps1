function Add-VSS3StorageLensStorageLensGroupLevel {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.StorageLensGroupLevel resource property to the template. 

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.StorageLensGroupLevel resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensgrouplevel.html

    .PARAMETER StorageLensGroupSelectionCriteria
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensgrouplevel.html#cfn-s3-storagelens-storagelensgrouplevel-storagelensgroupselectioncriteria
        UpdateType: Mutable
        Type: StorageLensGroupSelectionCriteria

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLens.StorageLensGroupLevel')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StorageLensGroupSelectionCriteria
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLens.StorageLensGroupLevel'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
