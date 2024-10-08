function Add-VSImageBuilderLifecyclePolicyPolicyDetail {
    <#
    .SYNOPSIS
        Adds an AWS::ImageBuilder::LifecyclePolicy.PolicyDetail resource property to the template.

    .DESCRIPTION
        Adds an AWS::ImageBuilder::LifecyclePolicy.PolicyDetail resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-policydetail.html

    .PARAMETER Action
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-policydetail.html#cfn-imagebuilder-lifecyclepolicy-policydetail-action
        UpdateType: Mutable
        Type: Action

    .PARAMETER ExclusionRules
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-policydetail.html#cfn-imagebuilder-lifecyclepolicy-policydetail-exclusionrules
        UpdateType: Mutable
        Type: ExclusionRules

    .PARAMETER Filter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-policydetail.html#cfn-imagebuilder-lifecyclepolicy-policydetail-filter
        UpdateType: Mutable
        Type: Filter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ImageBuilder.LifecyclePolicy.PolicyDetail')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Action,

        [Parameter(Mandatory = $false)]
        $ExclusionRules,

        [Parameter(Mandatory = $true)]
        $Filter

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ImageBuilder.LifecyclePolicy.PolicyDetail'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
