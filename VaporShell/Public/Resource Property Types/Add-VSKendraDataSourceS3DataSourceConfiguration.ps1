function Add-VSKendraDataSourceS3DataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.S3DataSourceConfiguration resource property to the template. Provides the configuration information to connect to an Amazon S3 bucket.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.S3DataSourceConfiguration resource property to the template.
Provides the configuration information to connect to an Amazon S3 bucket.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html

    .PARAMETER BucketName
        The name of the bucket that contains the documents.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-bucketname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InclusionPrefixes
        A list of S3 prefixes for the documents that should be included in the index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-inclusionprefixes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER InclusionPatterns
        A list of glob patterns for documents that should be indexed. If a document that matches an inclusion pattern also matches an exclusion pattern, the document is not indexed.
Some examples: https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters are:
+  **.txt* will include all text files in a directory files with the extension .txt.
+  ***/*.txt* will include all text files in a directory and its subdirectories.
+  **tax** will include all files in a directory that contain 'tax' in the file name, such as 'tax', 'taxes', 'income_tax'.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-inclusionpatterns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ExclusionPatterns
        A list of glob patterns for documents that should not be indexed. If a document that matches an inclusion prefix or inclusion pattern also matches an exclusion pattern, the document is not indexed.
Some examples: https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters are:
+  **.png , *.jpg* will exclude all PNG and JPEG image files in a directory files with the extensions .png and .jpg.
+  **internal** will exclude all files in a directory that contain 'internal' in the file name, such as 'internal', 'internal_only', 'company_internal'.
+  ***/*internal** will exclude all internal-related files in a directory and its subdirectories.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-exclusionpatterns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER DocumentsMetadataConfiguration
        Specifies document metadata files that contain information such as the document access control information, source URI, document author, and custom attributes. Each metadata file contains metadata about a single document.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-documentsmetadataconfiguration
        UpdateType: Mutable
        Type: DocumentsMetadataConfiguration

    .PARAMETER AccessControlListConfiguration
        Provides the path to the S3 bucket that contains the user context filtering files for the data source. For the format of the file, see Access control for S3 data sources: https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-accesscontrollistconfiguration
        UpdateType: Mutable
        Type: AccessControlListConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.S3DataSourceConfiguration')]
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
        $BucketName,
        [parameter(Mandatory = $false)]
        $InclusionPrefixes,
        [parameter(Mandatory = $false)]
        $InclusionPatterns,
        [parameter(Mandatory = $false)]
        $ExclusionPatterns,
        [parameter(Mandatory = $false)]
        $DocumentsMetadataConfiguration,
        [parameter(Mandatory = $false)]
        $AccessControlListConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.S3DataSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
