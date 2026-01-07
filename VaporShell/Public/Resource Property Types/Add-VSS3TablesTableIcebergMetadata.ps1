function Add-VSS3TablesTableIcebergMetadata {
    <#
    .SYNOPSIS
        Adds an AWS::S3Tables::Table.IcebergMetadata resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3Tables::Table.IcebergMetadata resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-icebergmetadata.html

    .PARAMETER IcebergSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-icebergmetadata.html#cfn-s3tables-table-icebergmetadata-icebergschema
        UpdateType: Immutable
        Type: IcebergSchema

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3Tables.Table.IcebergMetadata')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $IcebergSchema

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3Tables.Table.IcebergMetadata'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
