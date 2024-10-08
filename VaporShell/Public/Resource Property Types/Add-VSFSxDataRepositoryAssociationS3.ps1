function Add-VSFSxDataRepositoryAssociationS3 {
    <#
    .SYNOPSIS
        Adds an AWS::FSx::DataRepositoryAssociation.S3 resource property to the template.

    .DESCRIPTION
        Adds an AWS::FSx::DataRepositoryAssociation.S3 resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-s3.html

    .PARAMETER AutoImportPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-s3.html#cfn-fsx-datarepositoryassociation-s3-autoimportpolicy
        UpdateType: Mutable
        Type: AutoImportPolicy

    .PARAMETER AutoExportPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-s3.html#cfn-fsx-datarepositoryassociation-s3-autoexportpolicy
        UpdateType: Mutable
        Type: AutoExportPolicy

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.FSx.DataRepositoryAssociation.S3')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AutoImportPolicy,

        [Parameter(Mandatory = $false)]
        $AutoExportPolicy

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FSx.DataRepositoryAssociation.S3'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
