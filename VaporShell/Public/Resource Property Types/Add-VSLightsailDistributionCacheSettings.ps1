function Add-VSLightsailDistributionCacheSettings {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Distribution.CacheSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lightsail::Distribution.CacheSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html

    .PARAMETER ForwardedCookies
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedcookies
        UpdateType: Mutable
        Type: CookieObject

    .PARAMETER MinimumTTL
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-minimumttl
        UpdateType: Mutable
        PrimitiveType: Long

    .PARAMETER CachedHTTPMethods
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-cachedhttpmethods
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AllowedHTTPMethods
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-allowedhttpmethods
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MaximumTTL
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-maximumttl
        UpdateType: Mutable
        PrimitiveType: Long

    .PARAMETER ForwardedHeaders
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedheaders
        UpdateType: Mutable
        Type: HeaderObject

    .PARAMETER DefaultTTL
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-defaultttl
        UpdateType: Mutable
        PrimitiveType: Long

    .PARAMETER ForwardedQueryStrings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedquerystrings
        UpdateType: Mutable
        Type: QueryStringObject

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lightsail.Distribution.CacheSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ForwardedCookies,

        [Parameter(Mandatory = $false)]
        $MinimumTTL,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CachedHTTPMethods,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AllowedHTTPMethods,

        [Parameter(Mandatory = $false)]
        $MaximumTTL,

        [Parameter(Mandatory = $false)]
        $ForwardedHeaders,

        [Parameter(Mandatory = $false)]
        $DefaultTTL,

        [Parameter(Mandatory = $false)]
        $ForwardedQueryStrings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Distribution.CacheSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
