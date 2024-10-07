function Add-VSWAFv2WebACLAllowAction {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.AllowAction resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.AllowAction resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-allowaction.html

    .PARAMETER CustomRequestHandling
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-allowaction.html#cfn-wafv2-webacl-allowaction-customrequesthandling
        UpdateType: Mutable
        Type: CustomRequestHandling

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.AllowAction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomRequestHandling
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.AllowAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
