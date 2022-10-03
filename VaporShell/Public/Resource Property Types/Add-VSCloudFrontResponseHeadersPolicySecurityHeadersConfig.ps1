function Add-VSCloudFrontResponseHeadersPolicySecurityHeadersConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::ResponseHeadersPolicy.SecurityHeadersConfig resource property to the template. A configuration for a set of security-related HTTP response headers. CloudFront adds these headers to HTTP responses that it sends for requests that match a cache behavior associated with this response headers policy.

    .DESCRIPTION
        Adds an AWS::CloudFront::ResponseHeadersPolicy.SecurityHeadersConfig resource property to the template.
A configuration for a set of security-related HTTP response headers. CloudFront adds these headers to HTTP responses that it sends for requests that match a cache behavior associated with this response headers policy.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html

    .PARAMETER ContentSecurityPolicy
        The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header.
For more information about the Content-Security-Policy HTTP response header, see Content-Security-Policy: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-contentsecuritypolicy
        UpdateType: Mutable
        Type: ContentSecurityPolicy

    .PARAMETER ContentTypeOptions
        Determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff.
For more information about the X-Content-Type-Options HTTP response header, see X-Content-Type-Options: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-contenttypeoptions
        UpdateType: Mutable
        Type: ContentTypeOptions

    .PARAMETER FrameOptions
        Determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value.
For more information about the X-Frame-Options HTTP response header, see X-Frame-Options: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-frameoptions
        UpdateType: Mutable
        Type: FrameOptions

    .PARAMETER ReferrerPolicy
        Determines whether CloudFront includes the Referrer-Policy HTTP response header and the header’s value.
For more information about the Referrer-Policy HTTP response header, see Referrer-Policy: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-referrerpolicy
        UpdateType: Mutable
        Type: ReferrerPolicy

    .PARAMETER StrictTransportSecurity
        Determines whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value.
For more information about the Strict-Transport-Security HTTP response header, see Strict-Transport-Security: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-stricttransportsecurity
        UpdateType: Mutable
        Type: StrictTransportSecurity

    .PARAMETER XSSProtection
        Determines whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value.
For more information about the X-XSS-Protection HTTP response header, see X-XSS-Protection: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection in the MDN Web Docs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-xssprotection
        UpdateType: Mutable
        Type: XSSProtection

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.SecurityHeadersConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ContentSecurityPolicy,
        [parameter(Mandatory = $false)]
        $ContentTypeOptions,
        [parameter(Mandatory = $false)]
        $FrameOptions,
        [parameter(Mandatory = $false)]
        $ReferrerPolicy,
        [parameter(Mandatory = $false)]
        $StrictTransportSecurity,
        [parameter(Mandatory = $false)]
        $XSSProtection
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.SecurityHeadersConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
