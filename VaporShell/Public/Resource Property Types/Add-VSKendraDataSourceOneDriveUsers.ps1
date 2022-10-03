function Add-VSKendraDataSourceOneDriveUsers {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.OneDriveUsers resource property to the template. User accounts whose documents should be indexed.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.OneDriveUsers resource property to the template.
User accounts whose documents should be indexed.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html

    .PARAMETER OneDriveUserList
        A list of users whose documents should be indexed. Specify the user names in email format, for example, username@tenantdomain. If you need to index the documents of more than 100 users, use the OneDriveUserS3Path field to specify the location of a file containing a list of users.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html#cfn-kendra-datasource-onedriveusers-onedriveuserlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER OneDriveUserS3Path
        The S3 bucket location of a file containing a list of users whose documents should be indexed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html#cfn-kendra-datasource-onedriveusers-onedriveusers3path
        UpdateType: Mutable
        Type: S3Path

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.OneDriveUsers')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OneDriveUserList,
        [parameter(Mandatory = $false)]
        $OneDriveUserS3Path
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.OneDriveUsers'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
