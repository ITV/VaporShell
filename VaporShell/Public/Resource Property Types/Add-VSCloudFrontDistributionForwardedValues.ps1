function Add-VSCloudFrontDistributionForwardedValues {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template. This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template.
This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.

If you want to include values in the cache key, use a cache policy. For more information, see Creating cache policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy in the *Amazon CloudFront Developer Guide*.

If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see Creating origin request policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy in the *Amazon CloudFront Developer Guide*.

A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html

    .PARAMETER Cookies
        This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.
If you want to include cookies in the cache key, use a cache policy. For more information, see Creating cache policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy in the *Amazon CloudFront Developer Guide*.
If you want to send cookies to the origin but not include them in the cache key, use an origin request policy. For more information, see Creating origin request policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy in the *Amazon CloudFront Developer Guide*.
A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see How CloudFront Forwards, Caches, and Logs Cookies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html in the *Amazon CloudFront Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-cookies
        UpdateType: Mutable
        Type: Cookies

    .PARAMETER Headers
        This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.
If you want to include headers in the cache key, use a cache policy. For more information, see Creating cache policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy in the *Amazon CloudFront Developer Guide*.
If you want to send headers to the origin but not include them in the cache key, use an origin request policy. For more information, see Creating origin request policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy in the *Amazon CloudFront Developer Guide*.
A complex type that specifies the Headers, if any, that you want CloudFront to forward to the origin for this cache behavior whitelisted headers. For the headers that you specify, CloudFront also caches separate versions of a specified object that is based on the header values in viewer requests.
For more information, see  Caching Content Based on Request Headers: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html in the *Amazon CloudFront Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-headers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER QueryString
        This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.
If you want to include query strings in the cache key, use a cache policy. For more information, see Creating cache policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy in the *Amazon CloudFront Developer Guide*.
If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see Creating origin request policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy in the *Amazon CloudFront Developer Guide*.
Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of QueryString and on the values that you specify for QueryStringCacheKeys, if any:
If you specify true for QueryString and you don't specify any values for QueryStringCacheKeys, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.
If you specify true for QueryString and you specify one or more values for QueryStringCacheKeys, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.
If you specify false for QueryString, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.
For more information, see Configuring CloudFront to Cache Based on Query String Parameters: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html in the *Amazon CloudFront Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystring
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER QueryStringCacheKeys
        This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.
If you want to include query strings in the cache key, use a cache policy. For more information, see Creating cache policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy in the *Amazon CloudFront Developer Guide*.
If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see Creating origin request policies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy in the *Amazon CloudFront Developer Guide*.
A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystringcachekeys
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.ForwardedValues')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Cookies,
        [parameter(Mandatory = $false)]
        $Headers,
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
        $QueryString,
        [parameter(Mandatory = $false)]
        $QueryStringCacheKeys
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.ForwardedValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
