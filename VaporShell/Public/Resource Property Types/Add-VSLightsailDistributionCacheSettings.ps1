function Add-VSLightsailDistributionCacheSettings {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Distribution.CacheSettings resource property to the template. CacheSettings is a property of the AWS::Lightsail::Distribution: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html resource. It describes the cache settings of an Amazon Lightsail content delivery network (CDN distribution.

    .DESCRIPTION
        Adds an AWS::Lightsail::Distribution.CacheSettings resource property to the template.
CacheSettings is a property of the AWS::Lightsail::Distribution: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html resource. It describes the cache settings of an Amazon Lightsail content delivery network (CDN distribution.

These settings apply only to your distribution’s CacheBehaviors that have a Behavior of cache. This includes the DefaultCacheBehavior.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html

    .PARAMETER AllowedHTTPMethods
        The HTTP methods that are processed and forwarded to the distribution's origin.
You can specify the following options:
+  GET,HEAD - The distribution forwards the GET and HEAD methods.
+  GET,HEAD,OPTIONS - The distribution forwards the GET, HEAD, and OPTIONS methods.
+  GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE - The distribution forwards the GET, HEAD, OPTIONS, PUT, PATCH, POST, and DELETE methods.
If you specify GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE, you might need to restrict access to your distribution's origin so users can't perform operations that you don't want them to. For example, you might not want users to have permission to delete objects from your origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-allowedhttpmethods
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CachedHTTPMethods
        The HTTP method responses that are cached by your distribution.
You can specify the following options:
+  GET,HEAD - The distribution caches responses to the GET and HEAD methods.
+  GET,HEAD,OPTIONS - The distribution caches responses to the GET, HEAD, and OPTIONS methods.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-cachedhttpmethods
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DefaultTTL
        The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.
The value specified applies only when the origin does not add HTTP headers such as Cache-Control max-age, Cache-Control s-maxage, and Expires to objects.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-defaultttl
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MaximumTTL
        The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
The value specified applies only when the origin adds HTTP headers such as Cache-Control max-age, Cache-Control s-maxage, and Expires to objects.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-maximumttl
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MinimumTTL
        The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
A value of 0 must be specified for minimumTTL if the distribution is configured to forward all headers to the origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-minimumttl
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER ForwardedCookies
        An object that describes the cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedcookies
        UpdateType: Mutable
        Type: CookieObject

    .PARAMETER ForwardedHeaders
        An object that describes the headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedheaders
        UpdateType: Mutable
        Type: HeaderObject

    .PARAMETER ForwardedQueryStrings
        An object that describes the query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedquerystrings
        UpdateType: Mutable
        Type: QueryStringObject

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Distribution.CacheSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
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
        $DefaultTTL,
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
        $MaximumTTL,
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
        $MinimumTTL,
        [parameter(Mandatory = $false)]
        $ForwardedCookies,
        [parameter(Mandatory = $false)]
        $ForwardedHeaders,
        [parameter(Mandatory = $false)]
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
