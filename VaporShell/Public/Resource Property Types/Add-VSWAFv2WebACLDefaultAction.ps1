function Add-VSWAFv2WebACLDefaultAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.DefaultAction resource property to the template. In a WebACL, this is the action that you want AWS WAF to perform when a web request doesn't match any of the rules in the WebACL. The default action must be a terminating action, so count is not allowed.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.DefaultAction resource property to the template.
In a WebACL, this is the action that you want AWS WAF to perform when a web request doesn't match any of the rules in the WebACL. The default action must be a terminating action, so count is not allowed.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html

    .PARAMETER Allow
        Specifies that AWS WAF should allow requests by default.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-allow
        UpdateType: Mutable
        Type: AllowAction

    .PARAMETER Block
        Specifies that AWS WAF should block requests by default.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-block
        UpdateType: Mutable
        Type: BlockAction

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.DefaultAction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Allow,
        [parameter(Mandatory = $false)]
        $Block
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.DefaultAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
