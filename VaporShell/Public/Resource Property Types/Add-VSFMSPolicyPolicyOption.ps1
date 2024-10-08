function Add-VSFMSPolicyPolicyOption {
    <#
    .SYNOPSIS
        Adds an AWS::FMS::Policy.PolicyOption resource property to the template.

    .DESCRIPTION
        Adds an AWS::FMS::Policy.PolicyOption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html

    .PARAMETER NetworkFirewallPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html#cfn-fms-policy-policyoption-networkfirewallpolicy
        UpdateType: Mutable
        Type: NetworkFirewallPolicy

    .PARAMETER NetworkAclCommonPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html#cfn-fms-policy-policyoption-networkaclcommonpolicy
        UpdateType: Mutable
        Type: NetworkAclCommonPolicy

    .PARAMETER ThirdPartyFirewallPolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html#cfn-fms-policy-policyoption-thirdpartyfirewallpolicy
        UpdateType: Mutable
        Type: ThirdPartyFirewallPolicy

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.FMS.Policy.PolicyOption')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NetworkFirewallPolicy,

        [Parameter(Mandatory = $false)]
        $NetworkAclCommonPolicy,

        [Parameter(Mandatory = $false)]
        $ThirdPartyFirewallPolicy

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FMS.Policy.PolicyOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
