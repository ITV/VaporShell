function Add-VSInvoicingInvoiceUnitRule {
    <#
    .SYNOPSIS
        Adds an AWS::Invoicing::InvoiceUnit.Rule resource property to the template.

    .DESCRIPTION
        Adds an AWS::Invoicing::InvoiceUnit.Rule resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-invoicing-invoiceunit-rule.html

    .PARAMETER LinkedAccounts
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-invoicing-invoiceunit-rule.html#cfn-invoicing-invoiceunit-rule-linkedaccounts
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Invoicing.InvoiceUnit.Rule')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $LinkedAccounts

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Invoicing.InvoiceUnit.Rule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
