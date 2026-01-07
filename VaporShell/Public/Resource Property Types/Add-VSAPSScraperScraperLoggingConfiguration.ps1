function Add-VSAPSScraperScraperLoggingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::APS::Scraper.ScraperLoggingConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::APS::Scraper.ScraperLoggingConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingconfiguration.html

    .PARAMETER LoggingDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingconfiguration.html#cfn-aps-scraper-scraperloggingconfiguration-loggingdestination
        UpdateType: Mutable
        Type: ScraperLoggingDestination

    .PARAMETER ScraperComponents
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingconfiguration.html#cfn-aps-scraper-scraperloggingconfiguration-scrapercomponents
        UpdateType: Mutable
        Type: List
        ItemType: ScraperComponent
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.APS.Scraper.ScraperLoggingConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $LoggingDestination,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.APS.Scraper.ScraperComponent"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ScraperComponents

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.APS.Scraper.ScraperLoggingConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
