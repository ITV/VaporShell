function Add-VSFMSPolicyNetworkAclCommonPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::FMS::Policy.NetworkAclCommonPolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::FMS::Policy.NetworkAclCommonPolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclcommonpolicy.html

    .PARAMETER NetworkAclEntrySet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclcommonpolicy.html#cfn-fms-policy-networkaclcommonpolicy-networkaclentryset
        UpdateType: Mutable
        Type: NetworkAclEntrySet

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.FMS.Policy.NetworkAclCommonPolicy')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $NetworkAclEntrySet

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FMS.Policy.NetworkAclCommonPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
