function Add-VSKendraDataSourceGoogleDriveConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.GoogleDriveConfiguration resource property to the template. Provides the configuration information to connect to Google Drive as your data source.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.GoogleDriveConfiguration resource property to the template.
Provides the configuration information to connect to Google Drive as your data source.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html

    .PARAMETER SecretArn
        The Amazon Resource Name ARN of a AWS Secrets Managersecret that contains the credentials required to connect to Google Drive. For more information, see Using a Google Workspace Drive data source: https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html#cfn-kendra-datasource-googledriveconfiguration-secretarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InclusionPatterns
        A list of regular expression patterns to include certain items in your Google Drive, including shared drives and users' My Drives. Items that match the patterns are included in the index. Items that don't match the patterns are excluded from the index. If an item matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the item isn't included in the index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html#cfn-kendra-datasource-googledriveconfiguration-inclusionpatterns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ExclusionPatterns
        A list of regular expression patterns to exclude certain items in your Google Drive, including shared drives and users' My Drives. Items that match the patterns are excluded from the index. Items that don't match the patterns are included in the index. If an item matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the item isn't included in the index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html#cfn-kendra-datasource-googledriveconfiguration-exclusionpatterns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER FieldMappings
        Maps Google Drive data source attributes or field names to Amazon Kendra index field names. To create custom fields, use the UpdateIndex API before you map to Google Drive fields. For more information, see Mapping data source fields: https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html. The Google Drive data source field names must exist in your Google Drive custom metadata.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html#cfn-kendra-datasource-googledriveconfiguration-fieldmappings
        UpdateType: Mutable
        Type: List
        ItemType: DataSourceToIndexFieldMapping

    .PARAMETER ExcludeMimeTypes
        A list of MIME types to exclude from the index. All documents matching the specified MIME type are excluded.
For a list of MIME types, see Using a Google Workspace Drive data source: https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html#cfn-kendra-datasource-googledriveconfiguration-excludemimetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ExcludeUserAccounts
        A list of email addresses of the users. Documents owned by these users are excluded from the index. Documents shared with excluded users are indexed unless they are excluded in another way.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html#cfn-kendra-datasource-googledriveconfiguration-excludeuseraccounts
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ExcludeSharedDrives
        A list of identifiers or shared drives to exclude from the index. All files and folders stored on the shared drive are excluded.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-googledriveconfiguration.html#cfn-kendra-datasource-googledriveconfiguration-excludeshareddrives
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.GoogleDriveConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SecretArn,
        [parameter(Mandatory = $false)]
        $InclusionPatterns,
        [parameter(Mandatory = $false)]
        $ExclusionPatterns,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Kendra.DataSource.DataSourceToIndexFieldMapping"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FieldMappings,
        [parameter(Mandatory = $false)]
        $ExcludeMimeTypes,
        [parameter(Mandatory = $false)]
        $ExcludeUserAccounts,
        [parameter(Mandatory = $false)]
        $ExcludeSharedDrives
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.GoogleDriveConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
