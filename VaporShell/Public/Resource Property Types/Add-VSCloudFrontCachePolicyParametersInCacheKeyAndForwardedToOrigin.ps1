function Add-VSCloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::CachePolicy.ParametersInCacheKeyAndForwardedToOrigin resource property to the template. This object determines the values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.

    .DESCRIPTION
        Adds an AWS::CloudFront::CachePolicy.ParametersInCacheKeyAndForwardedToOrigin resource property to the template.
This object determines the values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.

The headers, cookies, and query strings that are included in the cache key are automatically included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t find an object in its cache that matches the request’s cache key. If you want to send values to the origin but *not* include them in the cache key, use OriginRequestPolicy.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html

    .PARAMETER CookiesConfig
        An object that determines whether any cookies in viewer requests and if so, which cookies are included in the cache key and automatically included in requests that CloudFront sends to the origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-cookiesconfig
        UpdateType: Mutable
        Type: CookiesConfig

    .PARAMETER EnableAcceptEncodingBrotli
        A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.
This field is related to the EnableAcceptEncodingGzip field. If one or both of these fields is true *and* the viewer request includes the Accept-Encoding header, then CloudFront does the following:
+ Normalizes the value of the viewer’s Accept-Encoding header
+ Includes the normalized header in the cache key
+ Includes the normalized header in the request to the origin, if a request is necessary
For more information, see Compression support: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects in the *Amazon CloudFront Developer Guide*.
If you set this value to true, and this cache behavior also has an origin request policy attached, do not include the Accept-Encoding header in the origin request policy. CloudFront always includes the Accept-Encoding header in origin requests when the value of this field is true, so including this header in an origin request policy has no effect.
If both of these fields are false, then CloudFront treats the Accept-Encoding header the same as any other HTTP header in the viewer request. By default, it’s not included in the cache key and it’s not included in origin requests. In this case, you can manually add Accept-Encoding to the headers whitelist like any other HTTP header.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-enableacceptencodingbrotli
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER EnableAcceptEncodingGzip
        A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.
This field is related to the EnableAcceptEncodingBrotli field. If one or both of these fields is true *and* the viewer request includes the Accept-Encoding header, then CloudFront does the following:
+ Normalizes the value of the viewer’s Accept-Encoding header
+ Includes the normalized header in the cache key
+ Includes the normalized header in the request to the origin, if a request is necessary
For more information, see Compression support: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects in the *Amazon CloudFront Developer Guide*.
If you set this value to true, and this cache behavior also has an origin request policy attached, do not include the Accept-Encoding header in the origin request policy. CloudFront always includes the Accept-Encoding header in origin requests when the value of this field is true, so including this header in an origin request policy has no effect.
If both of these fields are false, then CloudFront treats the Accept-Encoding header the same as any other HTTP header in the viewer request. By default, it’s not included in the cache key and it’s not included in origin requests. In this case, you can manually add Accept-Encoding to the headers whitelist like any other HTTP header.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-enableacceptencodinggzip
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER HeadersConfig
        An object that determines whether any HTTP headers and if so, which headers are included in the cache key and automatically included in requests that CloudFront sends to the origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-headersconfig
        UpdateType: Mutable
        Type: HeadersConfig

    .PARAMETER QueryStringsConfig
        An object that determines whether any URL query strings in viewer requests and if so, which query strings are included in the cache key and automatically included in requests that CloudFront sends to the origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-querystringsconfig
        UpdateType: Mutable
        Type: QueryStringsConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.CachePolicy.ParametersInCacheKeyAndForwardedToOrigin')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $CookiesConfig,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EnableAcceptEncodingBrotli,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EnableAcceptEncodingGzip,
        [parameter(Mandatory = $true)]
        $HeadersConfig,
        [parameter(Mandatory = $true)]
        $QueryStringsConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.CachePolicy.ParametersInCacheKeyAndForwardedToOrigin'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
