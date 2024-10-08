function Add-VSBedrockDataSourceSharePointCrawlerConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataSource.SharePointCrawlerConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Bedrock::DataSource.SharePointCrawlerConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-sharepointcrawlerconfiguration.html

    .PARAMETER FilterConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-sharepointcrawlerconfiguration.html#cfn-bedrock-datasource-sharepointcrawlerconfiguration-filterconfiguration
        UpdateType: Mutable
        Type: CrawlFilterConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Bedrock.DataSource.SharePointCrawlerConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FilterConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataSource.SharePointCrawlerConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
