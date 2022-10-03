function Add-VSAppSyncResolverCachingConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::Resolver.CachingConfig resource property to the template. The caching configuration for a resolver that has caching activated.

    .DESCRIPTION
        Adds an AWS::AppSync::Resolver.CachingConfig resource property to the template.
The caching configuration for a resolver that has caching activated.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html

    .PARAMETER CachingKeys
        The caching keys for a resolver that has caching activated.
Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-cachingkeys
        UpdateType: Mutable

    .PARAMETER Ttl
        The TTL in seconds for a resolver that has caching activated.
Valid values are 1–3,600 seconds.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-ttl
        PrimitiveType: Double
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppSync.Resolver.CachingConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CachingKeys,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Ttl
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.Resolver.CachingConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
