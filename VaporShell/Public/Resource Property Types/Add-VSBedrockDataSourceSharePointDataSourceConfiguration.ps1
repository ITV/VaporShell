function Add-VSBedrockDataSourceSharePointDataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataSource.SharePointDataSourceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataSource.SharePointDataSourceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-sharepointdatasourceconfiguration.html

    .PARAMETER SourceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-sharepointdatasourceconfiguration.html#cfn-bedrock-datasource-sharepointdatasourceconfiguration-sourceconfiguration
        UpdateType: Mutable
        Type: SharePointSourceConfiguration

    .PARAMETER CrawlerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-sharepointdatasourceconfiguration.html#cfn-bedrock-datasource-sharepointdatasourceconfiguration-crawlerconfiguration
        UpdateType: Mutable
        Type: SharePointCrawlerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataSource.SharePointDataSourceConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $SourceConfiguration,

        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataSource.SharePointDataSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
