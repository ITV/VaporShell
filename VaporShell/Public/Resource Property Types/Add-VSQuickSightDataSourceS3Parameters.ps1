function Add-VSQuickSightDataSourceS3Parameters {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSource.S3Parameters resource property to the template. The parameters for S3.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSource.S3Parameters resource property to the template.
The parameters for S3.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-s3parameters.html

    .PARAMETER ManifestFileLocation
        Location of the Amazon S3 manifest file. This is NULL if the manifest file was uploaded into Amazon QuickSight.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-s3parameters.html#cfn-quicksight-datasource-s3parameters-manifestfilelocation
        UpdateType: Mutable
        Type: ManifestFileLocation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSource.S3Parameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ManifestFileLocation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSource.S3Parameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
