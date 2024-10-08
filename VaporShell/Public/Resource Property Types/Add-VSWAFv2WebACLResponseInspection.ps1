function Add-VSWAFv2WebACLResponseInspection {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.ResponseInspection resource property to the template.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.ResponseInspection resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html

    .PARAMETER Header
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-header
        UpdateType: Mutable
        Type: ResponseInspectionHeader

    .PARAMETER BodyContains
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-bodycontains
        UpdateType: Mutable
        Type: ResponseInspectionBodyContains

    .PARAMETER Json
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-json
        UpdateType: Mutable
        Type: ResponseInspectionJson

    .PARAMETER StatusCode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-statuscode
        UpdateType: Mutable
        Type: ResponseInspectionStatusCode

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WAFv2.WebACL.ResponseInspection')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Header,

        [Parameter(Mandatory = $false)]
        $BodyContains,

        [Parameter(Mandatory = $false)]
        $Json,

        [Parameter(Mandatory = $false)]
        $StatusCode

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.ResponseInspection'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
