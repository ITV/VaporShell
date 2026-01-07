function Add-VSWAFv2WebACLAsnMatchStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.AsnMatchStatement resource property to the template.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.AsnMatchStatement resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-asnmatchstatement.html

    .PARAMETER ForwardedIPConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-asnmatchstatement.html#cfn-wafv2-webacl-asnmatchstatement-forwardedipconfig
        UpdateType: Mutable
        Type: ForwardedIPConfiguration

    .PARAMETER AsnList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-asnmatchstatement.html#cfn-wafv2-webacl-asnmatchstatement-asnlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Integer
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WAFv2.WebACL.AsnMatchStatement')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ForwardedIPConfig,

        [Parameter(Mandatory = $false)]
        $AsnList

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.AsnMatchStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
