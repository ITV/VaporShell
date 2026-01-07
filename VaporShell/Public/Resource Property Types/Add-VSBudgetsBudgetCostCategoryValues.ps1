function Add-VSBudgetsBudgetCostCategoryValues {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::Budget.CostCategoryValues resource property to the template.

    .DESCRIPTION
        Adds an AWS::Budgets::Budget.CostCategoryValues resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html

    .PARAMETER MatchOptions
        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html#cfn-budgets-budget-costcategoryvalues-matchoptions
        UpdateType: Mutable

    .PARAMETER Values
        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html#cfn-budgets-budget-costcategoryvalues-values
        UpdateType: Mutable

    .PARAMETER Key
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costcategoryvalues.html#cfn-budgets-budget-costcategoryvalues-key
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Budgets.Budget.CostCategoryValues')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MatchOptions,

        [Parameter(Mandatory = $false)]
        $Values,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Key

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.Budget.CostCategoryValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
