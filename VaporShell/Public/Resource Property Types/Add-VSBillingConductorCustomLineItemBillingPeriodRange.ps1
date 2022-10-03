function Add-VSBillingConductorCustomLineItemBillingPeriodRange {
    <#
    .SYNOPSIS
        Adds an AWS::BillingConductor::CustomLineItem.BillingPeriodRange resource property to the template. The billing period range in which the custom line item request will be applied.

    .DESCRIPTION
        Adds an AWS::BillingConductor::CustomLineItem.BillingPeriodRange resource property to the template.
The billing period range in which the custom line item request will be applied.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-billingperiodrange.html

    .PARAMETER InclusiveStartBillingPeriod
        The inclusive start billing period that defines a billing period range where a custom line is applied.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-billingperiodrange.html#cfn-billingconductor-customlineitem-billingperiodrange-inclusivestartbillingperiod
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER ExclusiveEndBillingPeriod
        The inclusive end billing period that defines a billing period range where a custom line is applied.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-billingperiodrange.html#cfn-billingconductor-customlineitem-billingperiodrange-exclusiveendbillingperiod
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.BillingConductor.CustomLineItem.BillingPeriodRange')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InclusiveStartBillingPeriod,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExclusiveEndBillingPeriod
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BillingConductor.CustomLineItem.BillingPeriodRange'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
