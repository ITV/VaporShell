function Add-VSKendraDataSourceDataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.DataSourceConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.DataSourceConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html

    .PARAMETER GoogleDriveConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-googledriveconfiguration
        UpdateType: Mutable
        Type: GoogleDriveConfiguration

    .PARAMETER WebCrawlerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-webcrawlerconfiguration
        UpdateType: Mutable
        Type: WebCrawlerConfiguration

    .PARAMETER S3Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-s3configuration
        UpdateType: Mutable
        Type: S3DataSourceConfiguration

    .PARAMETER SalesforceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-salesforceconfiguration
        UpdateType: Mutable
        Type: SalesforceConfiguration

    .PARAMETER DatabaseConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-databaseconfiguration
        UpdateType: Mutable
        Type: DatabaseConfiguration

    .PARAMETER SharePointConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-sharepointconfiguration
        UpdateType: Mutable
        Type: SharePointConfiguration

    .PARAMETER ConfluenceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-confluenceconfiguration
        UpdateType: Mutable
        Type: ConfluenceConfiguration

    .PARAMETER WorkDocsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-workdocsconfiguration
        UpdateType: Mutable
        Type: WorkDocsConfiguration

    .PARAMETER OneDriveConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-onedriveconfiguration
        UpdateType: Mutable
        Type: OneDriveConfiguration

    .PARAMETER ServiceNowConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-servicenowconfiguration
        UpdateType: Mutable
        Type: ServiceNowConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.DataSourceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $GoogleDriveConfiguration,
        [parameter(Mandatory = $false)]
        $WebCrawlerConfiguration,
        [parameter(Mandatory = $false)]
        $S3Configuration,
        [parameter(Mandatory = $false)]
        $SalesforceConfiguration,
        [parameter(Mandatory = $false)]
        $DatabaseConfiguration,
        [parameter(Mandatory = $false)]
        $SharePointConfiguration,
        [parameter(Mandatory = $false)]
        $ConfluenceConfiguration,
        [parameter(Mandatory = $false)]
        $WorkDocsConfiguration,
        [parameter(Mandatory = $false)]
        $OneDriveConfiguration,
        [parameter(Mandatory = $false)]
        $ServiceNowConfiguration
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
