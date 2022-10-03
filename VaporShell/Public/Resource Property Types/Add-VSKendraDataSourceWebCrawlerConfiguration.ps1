function Add-VSKendraDataSourceWebCrawlerConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.WebCrawlerConfiguration resource property to the template. Provides the configuration information required for Amazon Kendra Web Crawler.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.WebCrawlerConfiguration resource property to the template.
Provides the configuration information required for Amazon Kendra Web Crawler.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html

    .PARAMETER Urls
        Specifies the seed or starting point URLs of the websites or the sitemap URLs of the websites you want to crawl.
You can include website subdomains. You can list up to 100 seed URLs and up to three sitemap URLs.
You can only crawl websites that use the secure communication protocol, Hypertext Transfer Protocol Secure HTTPS. If you receive an error when crawling a website, it could be that the website is blocked from crawling.
*When selecting websites to index, you must adhere to the Amazon Acceptable Use Policy: http://aws.amazon.com/aup/ and all other Amazon terms. Remember that you must only use Amazon Kendra Web Crawler to index your own webpages, or webpages that you have authorization to index.*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-urls
        UpdateType: Mutable
        Type: WebCrawlerUrls

    .PARAMETER CrawlDepth
        Specifies the number of levels in a website that you want to crawl.
The first level begins from the website seed or starting point URL. For example, if a website has 3 levels – index level i.e. seed in this example, sections level, and subsections level – and you are only interested in crawling information up to the sections level i.e. levels 0-1, you can set your depth to 1.
The default crawl depth is set to 2.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-crawldepth
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MaxLinksPerPage
        The maximum number of URLs on a webpage to include when crawling a website. This number is per webpage.
As a website’s webpages are crawled, any URLs the webpages link to are also crawled. URLs on a webpage are crawled in order of appearance.
The default maximum links per page is 100.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-maxlinksperpage
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MaxContentSizePerPageInMegaBytes
        The maximum size in MB of a webpage or attachment to crawl.
Files larger than this size in MB are skipped/not crawled.
The default maximum size of a webpage or attachment is set to 50 MB.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-maxcontentsizeperpageinmegabytes
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER MaxUrlsPerMinuteCrawlRate
        The maximum number of URLs crawled per website host per minute.
A minimum of one URL is required.
The default maximum number of URLs crawled per website host per minute is 300.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-maxurlsperminutecrawlrate
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER UrlInclusionPatterns
        A list of regular expression patterns to include certain URLs to crawl. URLs that match the patterns are included in the index. URLs that don't match the patterns are excluded from the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-urlinclusionpatterns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER UrlExclusionPatterns
        A list of regular expression patterns to exclude certain URLs to crawl. URLs that match the patterns are excluded from the index. URLs that don't match the patterns are included in the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-urlexclusionpatterns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ProxyConfiguration
        Configuration information required to connect to your internal websites via a web proxy.
You must provide the website host name and port number. For example, the host name of https://a.example.com/page1.html is "a.example.com" and the port is 443, the standard port for HTTPS.
Web proxy credentials are optional and you can use them to connect to a web proxy server that requires basic authentication. To store web proxy credentials, you use a secret in AWS Secrets Manager: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-proxyconfiguration
        UpdateType: Mutable
        Type: ProxyConfiguration

    .PARAMETER AuthenticationConfiguration
        Configuration information required to connect to websites using authentication.
You can connect to websites using basic authentication of user name and password.
You must provide the website host name and port number. For example, the host name of https://a.example.com/page1.html is "a.example.com" and the port is 443, the standard port for HTTPS. You use a secret in AWS Secrets Manager: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html to store your authentication credentials.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-authenticationconfiguration
        UpdateType: Mutable
        Type: WebCrawlerAuthenticationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.WebCrawlerConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Urls,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CrawlDepth,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxLinksPerPage,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxContentSizePerPageInMegaBytes,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxUrlsPerMinuteCrawlRate,
        [parameter(Mandatory = $false)]
        $UrlInclusionPatterns,
        [parameter(Mandatory = $false)]
        $UrlExclusionPatterns,
        [parameter(Mandatory = $false)]
        $ProxyConfiguration,
        [parameter(Mandatory = $false)]
        $AuthenticationConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.WebCrawlerConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
