function Add-VSBillingConductorCustomLineItemCustomLineItemChargeDetails {
    <#
    .SYNOPSIS
        Adds an AWS::BillingConductor::CustomLineItem.CustomLineItemChargeDetails resource property to the template. The charge details of a custom line item. It should contain only one of Flat or Percentage.

    .DESCRIPTION
        Adds an AWS::BillingConductor::CustomLineItem.CustomLineItemChargeDetails resource property to the template.
The charge details of a custom line item. It should contain only one of Flat or Percentage.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html

    .PARAMETER Flat
        A CustomLineItemFlatChargeDetails that describes the charge details of a flat custom line item.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html#cfn-billingconductor-customlineitem-customlineitemchargedetails-flat
        UpdateType: Mutable
        Type: CustomLineItemFlatChargeDetails

    .PARAMETER Percentage
        A CustomLineItemPercentageChargeDetails that describes the charge details of a percentage custom line item.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html#cfn-billingconductor-customlineitem-customlineitemchargedetails-percentage
        UpdateType: Mutable
        Type: CustomLineItemPercentageChargeDetails

    .PARAMETER Type
        The type of the custom line item that indicates whether the charge is a fee or credit.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html#cfn-billingconductor-customlineitem-customlineitemchargedetails-type
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.BillingConductor.CustomLineItem.CustomLineItemChargeDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Flat,
        [parameter(Mandatory = $false)]
        $Percentage,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BillingConductor.CustomLineItem.CustomLineItemChargeDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
