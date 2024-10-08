function Add-VSTimestreamTableMagneticStoreRejectedDataLocation {
    <#
    .SYNOPSIS
        Adds an AWS::Timestream::Table.MagneticStoreRejectedDataLocation resource property to the template.

    .DESCRIPTION
        Adds an AWS::Timestream::Table.MagneticStoreRejectedDataLocation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-magneticstorerejecteddatalocation.html

    .PARAMETER S3Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-table-magneticstorerejecteddatalocation.html#cfn-timestream-table-magneticstorerejecteddatalocation-s3configuration
        UpdateType: Mutable
        Type: S3Configuration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Timestream.Table.MagneticStoreRejectedDataLocation')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3Configuration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Timestream.Table.MagneticStoreRejectedDataLocation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
