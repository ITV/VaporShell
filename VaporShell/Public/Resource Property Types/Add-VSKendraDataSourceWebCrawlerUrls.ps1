function Add-VSKendraDataSourceWebCrawlerUrls {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.WebCrawlerUrls resource property to the template. Specifies the seed or starting point URLs of the websites or the sitemap URLs of the websites you want to crawl.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.WebCrawlerUrls resource property to the template.
Specifies the seed or starting point URLs of the websites or the sitemap URLs of the websites you want to crawl.

You can include website subdomains. You can list up to 100 seed URLs and up to three sitemap URLs.

You can only crawl websites that use the secure communication protocol, Hypertext Transfer Protocol Secure (HTTPS. If you receive an error when crawling a website, it could be that the website is blocked from crawling.

*When selecting websites to index, you must adhere to the Amazon Acceptable Use Policy: http://aws.amazon.com/aup/ and all other Amazon terms. Remember that you must only use the Amazon Kendra web crawler to index your own webpages, or webpages that you have authorization to index.*

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerurls.html

    .PARAMETER SeedUrlConfiguration
        Configuration of the seed or starting point URLs of the websites you want to crawl.
You can choose to crawl only the website host names, or the website host names with subdomains, or the website host names with subdomains and other domains that the webpages link to.
You can list up to 100 seed URLs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerurls.html#cfn-kendra-datasource-webcrawlerurls-seedurlconfiguration
        UpdateType: Mutable
        Type: WebCrawlerSeedUrlConfiguration

    .PARAMETER SiteMapsConfiguration
        Configuration of the sitemap URLs of the websites you want to crawl.
Only URLs belonging to the same website host names are crawled. You can list up to three sitemap URLs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerurls.html#cfn-kendra-datasource-webcrawlerurls-sitemapsconfiguration
        UpdateType: Mutable
        Type: WebCrawlerSiteMapsConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.WebCrawlerUrls')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SeedUrlConfiguration,
        [parameter(Mandatory = $false)]
        $SiteMapsConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.WebCrawlerUrls'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
