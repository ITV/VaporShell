function Add-VSCloudFrontOriginRequestPolicyHeadersConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::OriginRequestPolicy.HeadersConfig resource property to the template. An object that determines whether any HTTP headers (and if so, which headers are included in requests that CloudFront sends to the origin.

    .DESCRIPTION
        Adds an AWS::CloudFront::OriginRequestPolicy.HeadersConfig resource property to the template.
An object that determines whether any HTTP headers (and if so, which headers are included in requests that CloudFront sends to the origin.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html

    .PARAMETER HeaderBehavior
        Determines whether any HTTP headers are included in requests that CloudFront sends to the origin. Valid values are:
+  none – HTTP headers are not included in requests that CloudFront sends to the origin. Even when this field is set to none, any headers that are listed in a CachePolicy *are* included in origin requests.
+  whitelist – The HTTP headers that are listed in the Headers type are included in requests that CloudFront sends to the origin.
+  allViewer – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin.
+  allViewerAndWhitelistCloudFront – All HTTP headers in viewer requests and the additional CloudFront headers that are listed in the Headers type are included in requests that CloudFront sends to the origin. The additional headers are added by CloudFront.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html#cfn-cloudfront-originrequestpolicy-headersconfig-headerbehavior
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Headers
        Contains a list of HTTP header names.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html#cfn-cloudfront-originrequestpolicy-headersconfig-headers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.OriginRequestPolicy.HeadersConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $HeaderBehavior,
        [parameter(Mandatory = $false)]
        $Headers
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.OriginRequestPolicy.HeadersConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
