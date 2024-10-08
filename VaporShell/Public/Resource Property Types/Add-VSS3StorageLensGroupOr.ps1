function Add-VSS3StorageLensGroupOr {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLensGroup.Or resource property to the template. 

    .DESCRIPTION
        Adds an AWS::S3::StorageLensGroup.Or resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-or.html

    .PARAMETER MatchObjectAge
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-or.html#cfn-s3-storagelensgroup-or-matchobjectage
        UpdateType: Mutable
        Type: MatchObjectAge

    .PARAMETER MatchAnyPrefix
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-or.html#cfn-s3-storagelensgroup-or-matchanyprefix
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER MatchAnyTag
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-or.html#cfn-s3-storagelensgroup-or-matchanytag
        UpdateType: Mutable
        Type: List
        ItemType: Tag
        DuplicatesAllowed: False

    .PARAMETER MatchAnySuffix
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-or.html#cfn-s3-storagelensgroup-or-matchanysuffix
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER MatchObjectSize
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelensgroup-or.html#cfn-s3-storagelensgroup-or-matchobjectsize
        UpdateType: Mutable
        Type: MatchObjectSize

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLensGroup.Or')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MatchObjectAge,
        [parameter(Mandatory = $false)]
        $MatchAnyPrefix,
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $false)]
        $MatchAnyTag,
        [parameter(Mandatory = $false)]
        $MatchAnySuffix,
        [parameter(Mandatory = $false)]
        $MatchObjectSize
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLensGroup.Or'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
