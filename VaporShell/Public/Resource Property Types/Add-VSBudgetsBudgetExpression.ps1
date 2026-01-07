function Add-VSBudgetsBudgetExpression {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::Budget.Expression resource property to the template.

    .DESCRIPTION
        Adds an AWS::Budgets::Budget.Expression resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html

    .PARAMETER Not
        Type: Expression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-not
        UpdateType: Mutable

    .PARAMETER Or
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-or
        ItemType: Expression
        UpdateType: Mutable

    .PARAMETER And
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-and
        ItemType: Expression
        UpdateType: Mutable

    .PARAMETER Dimensions
        Type: ExpressionDimensionValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-dimensions
        UpdateType: Mutable

    .PARAMETER CostCategories
        Type: CostCategoryValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-costcategories
        UpdateType: Mutable

    .PARAMETER Tags
        Type: TagValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expression.html#cfn-budgets-budget-expression-tags
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Budgets.Budget.Expression')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Not,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Budgets.Budget.Expression"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Or,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Budgets.Budget.Expression"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $And,

        [Parameter(Mandatory = $false)]
        $Dimensions,

        [Parameter(Mandatory = $false)]
        $CostCategories,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.Budget.Expression'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
