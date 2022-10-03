function Add-VSWAFv2WebACLCustomRequestHandling {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.CustomRequestHandling resource property to the template. Custom request handling behavior that inserts custom headers into a web request. You can add custom request handling for the rule actions allow and count.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.CustomRequestHandling resource property to the template.
Custom request handling behavior that inserts custom headers into a web request. You can add custom request handling for the rule actions allow and count.

For information about customizing web requests and responses, see Customizing web requests and responses in AWS WAF: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html in the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customrequesthandling.html

    .PARAMETER InsertHeaders
        The HTTP headers to insert into the request. Duplicate header names are not allowed.
For information about the limits on count and size for custom request and response settings, see AWS WAF quotas: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html in the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customrequesthandling.html#cfn-wafv2-webacl-customrequesthandling-insertheaders
        UpdateType: Mutable
        Type: List
        ItemType: CustomHTTPHeader

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.CustomRequestHandling')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.WebACL.CustomHTTPHeader"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InsertHeaders
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.CustomRequestHandling'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
