function Add-VSBillingConductorBillingGroupAccountGrouping {
    <#
    .SYNOPSIS
        Adds an AWS::BillingConductor::BillingGroup.AccountGrouping resource property to the template. The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated family.

    .DESCRIPTION
        Adds an AWS::BillingConductor::BillingGroup.AccountGrouping resource property to the template.
The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated family.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-billinggroup-accountgrouping.html

    .PARAMETER LinkedAccountIds
        The account IDs that make up the billing group. Account IDs must be a part of the consolidated billing family, and not associated with another billing group.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-billinggroup-accountgrouping.html#cfn-billingconductor-billinggroup-accountgrouping-linkedaccountids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.BillingConductor.BillingGroup.AccountGrouping')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $LinkedAccountIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BillingConductor.BillingGroup.AccountGrouping'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
