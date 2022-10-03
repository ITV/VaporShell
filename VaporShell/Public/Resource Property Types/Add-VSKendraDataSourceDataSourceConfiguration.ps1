function Add-VSKendraDataSourceDataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.DataSourceConfiguration resource property to the template. Provides the configuration information for an Amazon Kendra data source.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.DataSourceConfiguration resource property to the template.
Provides the configuration information for an Amazon Kendra data source.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html

    .PARAMETER S3Configuration
        Provides the configuration information to connect to an Amazon S3 bucket as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-s3configuration
        UpdateType: Mutable
        Type: S3DataSourceConfiguration

    .PARAMETER SharePointConfiguration
        Provides the configuration information to connect to Microsoft SharePoint as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-sharepointconfiguration
        UpdateType: Mutable
        Type: SharePointConfiguration

    .PARAMETER SalesforceConfiguration
        Provides the configuration information to connect to Salesforce as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-salesforceconfiguration
        UpdateType: Mutable
        Type: SalesforceConfiguration

    .PARAMETER OneDriveConfiguration
        Provides the configuration information to connect to Microsoft OneDrive as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-onedriveconfiguration
        UpdateType: Mutable
        Type: OneDriveConfiguration

    .PARAMETER ServiceNowConfiguration
        Provides the configuration information to connect to ServiceNow as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-servicenowconfiguration
        UpdateType: Mutable
        Type: ServiceNowConfiguration

    .PARAMETER DatabaseConfiguration
        Provides the configuration information to connect to a database as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-databaseconfiguration
        UpdateType: Mutable
        Type: DatabaseConfiguration

    .PARAMETER ConfluenceConfiguration
        Provides the configuration information to connect to Confluence as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-confluenceconfiguration
        UpdateType: Mutable
        Type: ConfluenceConfiguration

    .PARAMETER GoogleDriveConfiguration
        Provides the configuration information to connect to Google Drive as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-googledriveconfiguration
        UpdateType: Mutable
        Type: GoogleDriveConfiguration

    .PARAMETER WebCrawlerConfiguration
        Provides the configuration information required for Amazon Kendra Web Crawler.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-webcrawlerconfiguration
        UpdateType: Mutable
        Type: WebCrawlerConfiguration

    .PARAMETER WorkDocsConfiguration
        Provides the configuration information to connect to Amazon WorkDocs as your data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-workdocsconfiguration
        UpdateType: Mutable
        Type: WorkDocsConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.DataSourceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3Configuration,
        [parameter(Mandatory = $false)]
        $SharePointConfiguration,
        [parameter(Mandatory = $false)]
        $SalesforceConfiguration,
        [parameter(Mandatory = $false)]
        $OneDriveConfiguration,
        [parameter(Mandatory = $false)]
        $ServiceNowConfiguration,
        [parameter(Mandatory = $false)]
        $DatabaseConfiguration,
        [parameter(Mandatory = $false)]
        $ConfluenceConfiguration,
        [parameter(Mandatory = $false)]
        $GoogleDriveConfiguration,
        [parameter(Mandatory = $false)]
        $WebCrawlerConfiguration,
        [parameter(Mandatory = $false)]
        $WorkDocsConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.DataSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
