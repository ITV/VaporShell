function Add-VSWAFv2WebACLBlockAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.BlockAction resource property to the template. Specifies that AWS WAF should block requests.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.BlockAction resource property to the template.
Specifies that AWS WAF should block requests.

This is used only in the context of other settings, for example to specify values for the web ACL and rule group RuleAction and for the web ACL DefaultAction.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-blockaction.html

    .PARAMETER CustomResponse
        Defines a custom response for the web request.
For information about customizing web requests and responses, see Customizing web requests and responses in AWS WAF: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html in the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-blockaction.html#cfn-wafv2-webacl-blockaction-customresponse
        UpdateType: Mutable
        Type: CustomResponse

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.BlockAction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomResponse
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.BlockAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
