function Add-VSKendraDataSourceWebCrawlerSiteMapsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.WebCrawlerSiteMapsConfiguration resource property to the template. Provides the configuration information of the sitemap URLs to crawl.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.WebCrawlerSiteMapsConfiguration resource property to the template.
Provides the configuration information of the sitemap URLs to crawl.

*When selecting websites to index, you must adhere to the Amazon Acceptable Use Policy: http://aws.amazon.com/aup/ and all other Amazon terms. Remember that you must only use the Amazon Kendra web crawler to index your own webpages, or webpages that you have authorization to index.*

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlersitemapsconfiguration.html

    .PARAMETER SiteMaps
        The list of sitemap URLs of the websites you want to crawl.
The list can include a maximum of three sitemap URLs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlersitemapsconfiguration.html#cfn-kendra-datasource-webcrawlersitemapsconfiguration-sitemaps
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.WebCrawlerSiteMapsConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SiteMaps
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.WebCrawlerSiteMapsConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
