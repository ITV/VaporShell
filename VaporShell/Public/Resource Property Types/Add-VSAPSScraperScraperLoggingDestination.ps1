function Add-VSAPSScraperScraperLoggingDestination {
    <#
    .SYNOPSIS
        Adds an AWS::APS::Scraper.ScraperLoggingDestination resource property to the template.

    .DESCRIPTION
        Adds an AWS::APS::Scraper.ScraperLoggingDestination resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingdestination.html

    .PARAMETER CloudWatchLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingdestination.html#cfn-aps-scraper-scraperloggingdestination-cloudwatchlogs
        UpdateType: Mutable
        Type: CloudWatchLogDestination

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.APS.Scraper.ScraperLoggingDestination')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CloudWatchLogs

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.APS.Scraper.ScraperLoggingDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
