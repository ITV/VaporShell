function Add-VSCloudFrontResponseHeadersPolicyAccessControlAllowOrigins {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowOrigins resource property to the template. A list of origins (domain names that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header.

    .DESCRIPTION
        Adds an AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowOrigins resource property to the template.
A list of origins (domain names that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header.

For more information about the Access-Control-Allow-Origin HTTP response header, see Access-Control-Allow-Origin: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin in the MDN Web Docs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolalloworigins.html

    .PARAMETER Items
        The list of origins domain names. You can specify * to allow all origins.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolalloworigins.html#cfn-cloudfront-responseheaderspolicy-accesscontrolalloworigins-items
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.AccessControlAllowOrigins')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Items
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.AccessControlAllowOrigins'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
