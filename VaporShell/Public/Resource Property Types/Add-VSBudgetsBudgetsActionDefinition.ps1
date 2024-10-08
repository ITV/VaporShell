function Add-VSBudgetsBudgetsActionDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::BudgetsAction.Definition resource property to the template.

    .DESCRIPTION
        Adds an AWS::Budgets::BudgetsAction.Definition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html

    .PARAMETER SsmActionDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html#cfn-budgets-budgetsaction-definition-ssmactiondefinition
        UpdateType: Mutable
        Type: SsmActionDefinition

    .PARAMETER IamActionDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html#cfn-budgets-budgetsaction-definition-iamactiondefinition
        UpdateType: Mutable
        Type: IamActionDefinition

    .PARAMETER ScpActionDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html#cfn-budgets-budgetsaction-definition-scpactiondefinition
        UpdateType: Mutable
        Type: ScpActionDefinition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Budgets.BudgetsAction.Definition')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SsmActionDefinition,

        [Parameter(Mandatory = $false)]
        $IamActionDefinition,

        [Parameter(Mandatory = $false)]
        $ScpActionDefinition

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.BudgetsAction.Definition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
