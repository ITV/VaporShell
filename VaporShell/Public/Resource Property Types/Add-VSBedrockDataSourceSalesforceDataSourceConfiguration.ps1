function Add-VSBedrockDataSourceSalesforceDataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataSource.SalesforceDataSourceConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Bedrock::DataSource.SalesforceDataSourceConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-salesforcedatasourceconfiguration.html

    .PARAMETER SourceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-salesforcedatasourceconfiguration.html#cfn-bedrock-datasource-salesforcedatasourceconfiguration-sourceconfiguration
        UpdateType: Mutable
        Type: SalesforceSourceConfiguration

    .PARAMETER CrawlerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-salesforcedatasourceconfiguration.html#cfn-bedrock-datasource-salesforcedatasourceconfiguration-crawlerconfiguration
        UpdateType: Mutable
        Type: SalesforceCrawlerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Bedrock.DataSource.SalesforceDataSourceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SourceConfiguration,
        [parameter(Mandatory = $false)]
        $CrawlerConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataSource.SalesforceDataSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
