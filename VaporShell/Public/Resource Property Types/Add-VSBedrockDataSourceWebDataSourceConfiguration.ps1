function Add-VSBedrockDataSourceWebDataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataSource.WebDataSourceConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Bedrock::DataSource.WebDataSourceConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webdatasourceconfiguration.html

    .PARAMETER SourceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webdatasourceconfiguration.html#cfn-bedrock-datasource-webdatasourceconfiguration-sourceconfiguration
        UpdateType: Mutable
        Type: WebSourceConfiguration

    .PARAMETER CrawlerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webdatasourceconfiguration.html#cfn-bedrock-datasource-webdatasourceconfiguration-crawlerconfiguration
        UpdateType: Mutable
        Type: WebCrawlerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Bedrock.DataSource.WebDataSourceConfiguration')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataSource.WebDataSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
