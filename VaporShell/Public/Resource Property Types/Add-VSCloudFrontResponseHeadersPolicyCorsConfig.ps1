function Add-VSCloudFrontResponseHeadersPolicyCorsConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::ResponseHeadersPolicy.CorsConfig resource property to the template. A configuration for a set of HTTP response headers that are used for cross-origin resource sharing (CORS. CloudFront adds these headers to HTTP responses that it sends for CORS requests that match a cache behavior associated with this response headers policy.

    .DESCRIPTION
        Adds an AWS::CloudFront::ResponseHeadersPolicy.CorsConfig resource property to the template.
A configuration for a set of HTTP response headers that are used for cross-origin resource sharing (CORS. CloudFront adds these headers to HTTP responses that it sends for CORS requests that match a cache behavior associated with this response headers policy.

For more information about CORS, see Cross-Origin Resource Sharing (CORS: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS in the MDN Web Docs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html

    .PARAMETER AccessControlAllowCredentials
        A Boolean that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header.
For more information about the Access-Control-Allow-Credentials HTTP response header, see Access-Control-Allow-Credentials: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html#cfn-cloudfront-responseheaderspolicy-corsconfig-accesscontrolallowcredentials
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER AccessControlAllowHeaders
        A list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header.
For more information about the Access-Control-Allow-Headers HTTP response header, see Access-Control-Allow-Headers: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html#cfn-cloudfront-responseheaderspolicy-corsconfig-accesscontrolallowheaders
        UpdateType: Mutable
        Type: AccessControlAllowHeaders

    .PARAMETER AccessControlAllowMethods
        A list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header.
For more information about the Access-Control-Allow-Methods HTTP response header, see Access-Control-Allow-Methods: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html#cfn-cloudfront-responseheaderspolicy-corsconfig-accesscontrolallowmethods
        UpdateType: Mutable
        Type: AccessControlAllowMethods

    .PARAMETER AccessControlAllowOrigins
        A list of origins domain names that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header.
For more information about the Access-Control-Allow-Origin HTTP response header, see Access-Control-Allow-Origin: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html#cfn-cloudfront-responseheaderspolicy-corsconfig-accesscontrolalloworigins
        UpdateType: Mutable
        Type: AccessControlAllowOrigins

    .PARAMETER AccessControlExposeHeaders
        A list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header.
For more information about the Access-Control-Expose-Headers HTTP response header, see Access-Control-Expose-Headers: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html#cfn-cloudfront-responseheaderspolicy-corsconfig-accesscontrolexposeheaders
        UpdateType: Mutable
        Type: AccessControlExposeHeaders

    .PARAMETER AccessControlMaxAgeSec
        A number that CloudFront uses as the value for the Access-Control-Max-Age HTTP response header.
For more information about the Access-Control-Max-Age HTTP response header, see Access-Control-Max-Age: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html#cfn-cloudfront-responseheaderspolicy-corsconfig-accesscontrolmaxagesec
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER OriginOverride
        A Boolean that determines whether CloudFront overrides HTTP response headers received from the origin with the ones specified in this response headers policy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-corsconfig.html#cfn-cloudfront-responseheaderspolicy-corsconfig-originoverride
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.CorsConfig')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","AccessControlAllowCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","AccessControlAllowCredentials")]
    Param
    (
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
        $AccessControlAllowCredentials,
        [parameter(Mandatory = $true)]
        $AccessControlAllowHeaders,
        [parameter(Mandatory = $true)]
        $AccessControlAllowMethods,
        [parameter(Mandatory = $true)]
        $AccessControlAllowOrigins,
        [parameter(Mandatory = $false)]
        $AccessControlExposeHeaders,
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
        $AccessControlMaxAgeSec,
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
        $OriginOverride
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.CorsConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
