function Add-VSCloudFrontResponseHeadersPolicySecurityHeadersConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::ResponseHeadersPolicy.SecurityHeadersConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFront::ResponseHeadersPolicy.SecurityHeadersConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html

    .PARAMETER ContentSecurityPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-contentsecuritypolicy
        UpdateType: Mutable
        Type: ContentSecurityPolicy

    .PARAMETER FrameOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-frameoptions
        UpdateType: Mutable
        Type: FrameOptions

    .PARAMETER ContentTypeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-contenttypeoptions
        UpdateType: Mutable
        Type: ContentTypeOptions

    .PARAMETER StrictTransportSecurity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-stricttransportsecurity
        UpdateType: Mutable
        Type: StrictTransportSecurity

    .PARAMETER XSSProtection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-xssprotection
        UpdateType: Mutable
        Type: XSSProtection

    .PARAMETER ReferrerPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-referrerpolicy
        UpdateType: Mutable
        Type: ReferrerPolicy

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.SecurityHeadersConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ContentSecurityPolicy,

        [Parameter(Mandatory = $false)]
        $FrameOptions,

        [Parameter(Mandatory = $false)]
        $ContentTypeOptions,

        [Parameter(Mandatory = $false)]
        $StrictTransportSecurity,

        [Parameter(Mandatory = $false)]
        $XSSProtection,

        [Parameter(Mandatory = $false)]
        $ReferrerPolicy

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
