function Add-VSCloudFrontResponseHeadersPolicyAccessControlAllowMethods {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowMethods resource property to the template. A list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header.

    .DESCRIPTION
        Adds an AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowMethods resource property to the template.
A list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header.

For more information about the Access-Control-Allow-Methods HTTP response header, see Access-Control-Allow-Methods: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods in the MDN Web Docs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolallowmethods.html

    .PARAMETER Items
        The list of HTTP methods. Valid values are:
+  GET
+  DELETE
+  HEAD
+  OPTIONS
+  PATCH
+  POST
+  PUT
+  ALL
ALL is a special value that includes all of the listed HTTP methods.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolallowmethods.html#cfn-cloudfront-responseheaderspolicy-accesscontrolallowmethods-items
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.AccessControlAllowMethods')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.ResponseHeadersPolicy.AccessControlAllowMethods'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
