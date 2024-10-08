function Add-VSElastiCacheServerlessCacheCacheUsageLimits {
    <#
    .SYNOPSIS
        Adds an AWS::ElastiCache::ServerlessCache.CacheUsageLimits resource property to the template.

    .DESCRIPTION
        Adds an AWS::ElastiCache::ServerlessCache.CacheUsageLimits resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-cacheusagelimits.html

    .PARAMETER DataStorage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-cacheusagelimits.html#cfn-elasticache-serverlesscache-cacheusagelimits-datastorage
        UpdateType: Mutable
        Type: DataStorage

    .PARAMETER ECPUPerSecond
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-cacheusagelimits.html#cfn-elasticache-serverlesscache-cacheusagelimits-ecpupersecond
        UpdateType: Mutable
        Type: ECPUPerSecond

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ElastiCache.ServerlessCache.CacheUsageLimits')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DataStorage,

        [Parameter(Mandatory = $false)]
        $ECPUPerSecond

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElastiCache.ServerlessCache.CacheUsageLimits'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
