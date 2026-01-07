function Add-VSBillingBillingViewDataFilterExpression {
    <#
    .SYNOPSIS
        Adds an AWS::Billing::BillingView.DataFilterExpression resource property to the template.

    .DESCRIPTION
        Adds an AWS::Billing::BillingView.DataFilterExpression resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-datafilterexpression.html

    .PARAMETER TimeRange
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-datafilterexpression.html#cfn-billing-billingview-datafilterexpression-timerange
        UpdateType: Mutable
        Type: TimeRange

    .PARAMETER Dimensions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-datafilterexpression.html#cfn-billing-billingview-datafilterexpression-dimensions
        UpdateType: Mutable
        Type: Dimensions

    .PARAMETER Tags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-datafilterexpression.html#cfn-billing-billingview-datafilterexpression-tags
        UpdateType: Mutable
        Type: Tags

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Billing.BillingView.DataFilterExpression')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TimeRange,

        [Parameter(Mandatory = $false)]
        $Dimensions,

        [Parameter(Mandatory = $false)]
        $Tags

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Billing.BillingView.DataFilterExpression'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
